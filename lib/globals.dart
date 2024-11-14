library essa.globals;

import 'dart:async';
import 'dart:io';
import 'dart:convert';
// flutter pub add shared_preferences
import 'package:shared_preferences/shared_preferences.dart';
import 'package:essa/pages/konto/http_utils.dart' as http_utils;

// zmienne globalne
String idKlienta = "1";
String imie = "Radosław";
String nazwisko = "Zdzisielski";
String email = "rzdzisielski@gmail.com";
double cenaWody = 9;
double cenaPradu = 1.36;
double cenaGazu = 2.63;


// zmienne do połączenia z API
String host = "192.168.2.20";
int port = 3000;
String api_endpoint = "/api/data";
String ostatni_zapis = "brak danych";

// Funkcja do zapisywania wartości zmiennych globalnych
Future<void> saveGlobals() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('idKlienta', idKlienta);
  prefs.setString('imie', imie);
  prefs.setString('nazwisko', nazwisko);
  prefs.setString('email', email);
  prefs.setDouble('cenaWody', cenaWody);
  prefs.setDouble('cenaPradu', cenaPradu);
  prefs.setDouble('cenaGazu', cenaGazu);
}

// Funkcja do ładowania wartości zmiennych globalnych
Future<void> loadGlobals() async {
  final prefs = await SharedPreferences.getInstance();
  idKlienta = prefs.getString('idKlienta') ?? "1";
  imie = prefs.getString('imie') ?? "Radosław";
  nazwisko = prefs.getString('nazwisko') ?? "Zdzisielski";
  email = prefs.getString('email') ?? "rzdzisielski@gmail.com";
  cenaWody = prefs.getDouble('cenaWody') ?? 9;
  cenaPradu = prefs.getDouble('cenaPradu') ?? 1.36;
  cenaGazu = prefs.getDouble('cenaGazu') ?? 2.63;
}

// funkcje niezbędne do połączenia z API
Future<void> postToApi() async{
  try {
    HttpClientResponse response = await _postToApi().timeout(const Duration(seconds: 15));
    if (response.statusCode == 200) {
      print("Data sent successfully");
    } else {
      print("Error sending data: ${response.statusCode}");
    }
  } on TimeoutException catch (_) {
    print("Request timed out");
  } catch (e) {
    print("Error sending data: $e");
  }
}
Future<void> getFromApi() async{
  try {
    HttpClientResponse response = await _getFromApi().timeout(const Duration(seconds: 15));
    if (response.statusCode == 200) {
      String responseBody = await response.transform(utf8.decoder).join();
      print("Data received successfully");
      Map<String, dynamic> jsonMap = jsonDecode(responseBody);
      idKlienta = jsonMap['id'];
      imie = jsonMap['imie'];
      nazwisko = jsonMap['nazwisko'];
      email = jsonMap['email'];
      cenaWody = jsonMap['cenaWody'];
      cenaPradu = jsonMap['cenaPradu'];
      cenaGazu = jsonMap['cenaGazu'];
      await saveGlobals();
    } else {
      print("Error receiving data: ${response.statusCode}");
    }
  } on TimeoutException catch (_) {
    print("Request timed out");
  } catch (e) {
    print("Error receiving data: $e");
  }
}


Future<HttpClientResponse> _postToApi() async{
  Map<String, dynamic> jsonMap = {
    'id': idKlienta,
    'imie': imie,
    'nazwisko': nazwisko,
    'email': email,
    'cenaWody': cenaWody,
    'cenaPradu': cenaPradu,
    'cenaGazu': cenaGazu
  };
  String jsonString = jsonMap.toString();
  String paramName = 'data';
  String formBody = paramName + '=' + Uri.encodeQueryComponent(jsonString);
  List<int> bodyBytes = utf8.encode(formBody);
  HttpClientRequest request = await HttpClient().post(host, port, api_endpoint);
  request.headers.set('Content-Length', bodyBytes.length.toString());
  request.headers.set('Content-Type', 'application/json');
  request.add(bodyBytes);
  print("posting to api on $host:$port$api_endpoint");
  return await request.close();
}

// funkcje do ładowania danych z Serwera z get
Future<HttpClientResponse> _getFromApi() async{
  HttpClientRequest request = await HttpClient().get(host, port, api_endpoint);
  print("getting from api on $host:$port$api_endpoint");
  return await request.close();
}