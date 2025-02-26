import 'package:flutter/material.dart';
import 'package:global/core/constant/color/colors.dart';
import 'package:global/core/constant/string/string.dart';
import 'package:global/core/providers/bottom_bar/bottom_bar.dart';
import 'package:global/ui/screens/app_settings.dart';
import 'package:global/ui/screens/history.dart';
import 'package:global/ui/screens/home.dart';
import 'package:global/ui/screens/sms.dart';
import 'package:provider/provider.dart';

class Keypad extends StatefulWidget {
  const Keypad({super.key});

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            child: Row(
              children: [
                Image.asset(
                  '$staticAssets/logo.png',
                  scale: 2,
                )
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: ,
    );
  }
}
