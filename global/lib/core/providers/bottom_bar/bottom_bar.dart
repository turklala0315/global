import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class BottomBarProvider with ChangeNotifier {
  int _selectedIndex = 0; // Default selected index is 0

  int get selectedIndex => _selectedIndex;

  void changeSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners(); // Notifies the listeners to rebuild the widget
  }
}
