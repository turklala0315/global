import 'package:flutter/material.dart';
import 'package:global/core/constant/string/string.dart';
import 'package:global/core/providers/bottom_bar/dialer_provider/dialer_provider.dart';
import 'package:provider/provider.dart';

class Keypad extends StatefulWidget {
  const Keypad({super.key});

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  @override
  Widget build(BuildContext context) {
    final TextField = TextEditingController();
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
                ),
              ],
            ),
          ),
          //
          const SizedBox(height: 30),
          //
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                Provider.of<DialerProvider>(context).phoneNumber,
                style: const TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
