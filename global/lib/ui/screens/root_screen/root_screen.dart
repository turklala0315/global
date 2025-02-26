import 'package:flutter/material.dart';
import 'package:global/core/constant/color/colors.dart';
import 'package:global/core/providers/bottom_bar/bottom_bar.dart';
import 'package:global/ui/screens/app_settings.dart';
import 'package:global/ui/screens/history.dart';
import 'package:global/ui/screens/home.dart';
import 'package:global/ui/screens/keypad.dart';
import 'package:global/ui/screens/sms.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List allscreens = [
      const Home(),
      const Sms(),
      const Keypad(),
      const History(),
      const AppSettings()
    ];
    final provider = Provider.of<BottomBarProvider>(context);
    return Scaffold(
      body: allscreens[provider.selectedIndex.Index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            provider.changeSelectedIndex(index);
          },
          selectedItemColor: mainorange,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          iconSize: 25,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "My account"),
            BottomNavigationBarItem(
                icon: Icon(Icons.sms_failed_outlined), label: " SMS"),
            BottomNavigationBarItem(
                icon: Icon(Icons.keyboard_backspace_rounded), label: "Keypad"),
            BottomNavigationBarItem(
                icon: Icon(Icons.refresh), label: " History"),
            BottomNavigationBarItem(
                icon: Icon(Icons.adjust_rounded), label: " App settings")
          ]),
    );
  }
}
