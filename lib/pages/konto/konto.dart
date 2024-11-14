import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
import 'package:essa/globals.dart' as globals;
import 'package:essa/pages/konto/http_utils.dart' as http_utils;

class Konto extends StatefulWidget {
  const Konto({super.key});
  @override
  State<Konto> createState() => _KontoState();
}

class _KontoState extends State<Konto> {
  final TextEditingController _nameController =
      TextEditingController(text: globals.imie);
  final TextEditingController _surnameController =
      TextEditingController(text: globals.nazwisko);
  final TextEditingController _emailController =
      TextEditingController(text: globals.email);
  final TextEditingController _waterPriceController =
      TextEditingController(text: globals.cenaWody.toString());
  final TextEditingController _electricityPriceController =
      TextEditingController(text: globals.cenaPradu.toString());

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _surnameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _waterPriceFocusNode = FocusNode();
  final FocusNode _electricityPriceFocusNode = FocusNode();

  bool _isEditable = false;

  @override
  void initState() {
    super.initState();
    http_utils.loadLastData();
    _waterPriceController.addListener(() {
      setState(() {});
    });
    _electricityPriceController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _nameFocusNode.dispose();
    _surnameFocusNode.dispose();
    _emailFocusNode.dispose();
    _waterPriceFocusNode.dispose();
    _electricityPriceFocusNode.dispose();
    super.dispose();
  }

  void _setFieldsDisabled() {
    setState(() {
      _isEditable = false;
      _nameFocusNode.unfocus();
      _surnameFocusNode.unfocus();
      _emailFocusNode.unfocus();
      _waterPriceFocusNode.unfocus();
      _electricityPriceFocusNode.unfocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        width: MediaQuery.of(context).size.width * 0.88,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Konto',
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.black),
                  onPressed: () {
                    setState(() {
                      _isEditable = !_isEditable;
                      if (_isEditable) {
                        _nameFocusNode.requestFocus();
                      } else {
                        _setFieldsDisabled();
                      }
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dane użytkownika',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  _buildTextField(
                      label: 'Imię',
                      controller: _nameController,
                      focusNode: _nameFocusNode,
                      enabled: _isEditable),
                  const SizedBox(height: 30),
                  _buildTextField(
                      label: 'Nazwisko',
                      controller: _surnameController,
                      focusNode: _surnameFocusNode,
                      enabled: _isEditable),
                  const SizedBox(height: 30),
                  _buildTextField(
                      label: 'E-mail',
                      controller: _emailController,
                      focusNode: _emailFocusNode,
                      enabled: _isEditable),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dane licznikowe',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  _buildTextField(
                      label: 'Cena wody (za m3)',
                      controller: _waterPriceController,
                      focusNode: _waterPriceFocusNode,
                      enabled: _isEditable,
                      suffix: 'zł'),
                  const SizedBox(height: 30),
                  _buildTextField(
                      label: 'Cena prądu (za kWh)',
                      controller: _electricityPriceController,
                      focusNode: _electricityPriceFocusNode,
                      enabled: _isEditable,
                      suffix: 'zł'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 30, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dane na serwerze',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Ostatni zapis: ${globals.ostatni_zapis.replaceAll('-', '.')}',
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _saveData();
                      _setFieldsDisabled();
                    },
                    child: const Text('Zapisz na serwerze'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _loadData,
                    child: const Text('Wczytaj z serwera'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required String label,
      required TextEditingController controller,
      required FocusNode focusNode,
      bool enabled = true,
      String? suffix}) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(fontSize: 22, color: Colors.black),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        suffixText: controller.text.isEmpty ? null : suffix,
        suffixStyle: const TextStyle(color: Colors.black),
      ),
      controller: controller,
      focusNode: focusNode,
      enabled: enabled,
    );
  }

  void _saveData() {
    setState(() {
      globals.imie = _nameController.text;
      globals.nazwisko = _surnameController.text;
      globals.email = _emailController.text;
      globals.cenaWody =
          double.parse(_waterPriceController.text.replaceAll('zł', '').trim());
      globals.cenaPradu = double.parse(
          _electricityPriceController.text.replaceAll('zł', '').trim());
      globals.postToApi();
    });
  }

  void _loadData() {
    setState(() {
      globals.getFromApi();
    });
  }
}
