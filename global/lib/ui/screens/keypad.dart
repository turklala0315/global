import 'package:flutter/material.dart';
import 'package:global/core/constant/color/colors.dart';
import 'package:global/core/constant/string/string.dart';
import 'package:global/core/constant/text_style/text_style.dart';

class Keypad extends StatefulWidget {
  const Keypad({super.key});

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  String display = '';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  '$staticAssets/logo.png',
                  scale: 2,
                ),
              ),
            ),
            //
            const SizedBox(height: 10),
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            display,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow:
                                TextOverflow.ellipsis, // Prevents overflow
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //
            const SizedBox(height: 10),
            //
            TextButton(
              onPressed: () {},
              child: const Text(
                'Add Contact',
                style: style12bgreen,
              ),
            ),
            //
            const SizedBox(height: 10),
            //
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.2, // Ensures proper button size
                ),
                itemBuilder: (context, index) {
                  List<String> buttons = [
                    '1',
                    '2',
                    '3',
                    '4',
                    '5',
                    '6',
                    '7',
                    '8',
                    '9',
                    '*',
                    '0',
                    '#'
                  ];

                  return dialpadButton(size, buttons[index]);
                },
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.import_contacts_rounded,
                      size: 30,
                      color: green,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundColor: mainorange,
                      child: Icon(
                        Icons.call,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // if (display.isNotEmpty)
                  IconButton(
                    icon: const Icon(Icons.backspace_outlined),
                    onPressed: () {
                      setState(() {
                        display = display.substring(0, display.length - 1);
                      });
                    },
                  ),
                  // const SizedBox(width: 20), // Spacer for alignment
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dialpadButton(Size size, String value) {
    return InkWell(
      onTap: () {
        setState(() {
          display += value;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
