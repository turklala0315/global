import 'package:flutter/material.dart';

class DialerProvider with ChangeNotifier {
  String _phoneNumber = '';

  String get phoneNumber => _phoneNumber;

  void addDigit(String digit) {
    _phoneNumber += digit;
    notifyListeners();
  }

  void removeLastDigit() {
    if (_phoneNumber.isNotEmpty) {
      _phoneNumber = _phoneNumber.substring(0, _phoneNumber.length - 1);
      notifyListeners();
    }
  }

  void clear() {
    _phoneNumber = '';
    notifyListeners();
  }
}
