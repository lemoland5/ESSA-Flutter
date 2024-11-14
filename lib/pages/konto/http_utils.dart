library essa.http_utils;

import 'package:essa/globals.dart' as globals;
import 'dart:async';
import 'dart:io';
import 'dart:convert';

String _host = globals.host;
int _port = globals.port;
// ignore: non_constant_identifier_names
String _api_endpoint = globals.api_endpoint;

// debug
bool kDebugMode = false;

Future<HttpClientResponse> simpleGet(String endpoint) async {
  HttpClientRequest request = await HttpClient().get(_host, _port, endpoint);

  if (kDebugMode) {
    // ignore: avoid_print
    print("getting from api on $_host:$_port$endpoint");
  }

  return await request.close();
}

// ładowanie ostatniego zapisu get /api/data/last-date?id=[id_klienta]
Future<void> loadLastData() async {
  try {
    HttpClientResponse response =
        await simpleGet("${_api_endpoint}last-date?id=${globals.idKlienta}")
            .timeout(const Duration(seconds: 15));
    if (response.statusCode == 200) {
      String responseBody = await response.transform(utf8.decoder).join();
      //zapis dd-mm-yyyy/hh:mm:ss. Naiwne sprawdzanie:
      if (responseBody.length == 19) {
        globals.ostatni_zapis = responseBody;
        if (kDebugMode) {
          // ignore: avoid_print
          print("Last data loaded successfully");
        }
      } else {
        if (kDebugMode) {
          // ignore: avoid_print
          print("Error loading last data: wrong format");
        }
      }
    } else {
      if (kDebugMode) {
        // ignore: avoid_print
        print("Error loading last data: ${response.statusCode}");
      }
    }
  } on TimeoutException catch (_) {
    if (kDebugMode) {
      // ignore: avoid_print
      print("Request timed out");
    }
  } catch (e) {
    if (kDebugMode) {
      // ignore: avoid_print
      print("Error loading last data: $e");
    }
  }
}
