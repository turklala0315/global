import 'package:flutter/material.dart';
import 'package:global/core/constant/color/colors.dart';
import 'package:global/core/constant/string/string.dart';
import 'package:global/core/constant/text_style/text_style.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Uri dailnumber = Uri(scheme: 'tel', path: '12345678');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Positioned(
              right: 20,
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
            const SizedBox(height: 200),
            //
            Image.asset('$staticAssets/goods.png'),
            //
            const SizedBox(height: 20),
            //
            const Center(
                child: Text(
              'Thank you',
              style: style26,
            )),
            //
            const SizedBox(height: 10),
            //
            const Text(
              'Your new number was successfully verified.',
              style: style10,
            ),
            //
            const SizedBox(height: 5),
            //
            const Text(
                'The app would like to access your Contacts to synchronize and display the call history properly.',
                style: style10r,
                textAlign: TextAlign.center),
            //
            const SizedBox(height: 30),
            //
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 40,
                width: 320,
                decoration: BoxDecoration(
                    color: mainorange, borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  'Continue to the App',
                  style: style10w,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
