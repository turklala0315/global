import 'package:flutter/material.dart';
import 'package:global/core/constant/string/string.dart';

class AddToContact extends StatefulWidget {
  const AddToContact({super.key});

  @override
  State<AddToContact> createState() => _AddToContactState();
}

class _AddToContactState extends State<AddToContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  '$staticAssets/logo.png',
                  scale: 2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
