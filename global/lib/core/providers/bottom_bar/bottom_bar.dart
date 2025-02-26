import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:global/core/providers/bottom_bar/bottom_bar.dart';

class BottomBarProvider with ChangeNotifier {
  SelectedIndex _selectedIndex = SelectedIndex(0);
  void changeSelectedIndex(int index) {
    _selectedIndex = SelectedIndex(index);
    notifyListeners();
  }

  SelectedIndex get selectedIndex => _selectedIndex;
}

class SelectedIndex {
  final int Index;
  SelectedIndex(this.Index);
}
