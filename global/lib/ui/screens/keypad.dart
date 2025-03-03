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
  final Textfield = TextEditingController();

  String display = '';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          //
          //
          //text fiel start....
          //
          //
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        display,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis, // Prevents overflow
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //
          // text field end
          //
          //
          const SizedBox(height: 10),
          //
          //
          //text button start
          //
          TextButton(
            onPressed: () {},
            child: const Text(
              'Add Contact',
              style: style12bgreen,
            ),
          ),
          //
          //
          //text buttton end
          //
          //
          //
          // keypad buttons starts
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '1';
                      });
                    },
                    child: const Text(
                      '1',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '2';
                      });
                    },
                    child: const Text(
                      '2',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '3';
                      });
                    },
                    child: const Text(
                      '3',
                      style: style18regular,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '4';
                      });
                    },
                    child: const Text(
                      '4',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '5';
                      });
                    },
                    child: const Text(
                      '5',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '6';
                      });
                    },
                    child: const Text(
                      '6',
                      style: style18regular,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '7';
                      });
                    },
                    child: const Text(
                      '7',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '8';
                      });
                    },
                    child: const Text(
                      '8',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '9';
                      });
                    },
                    child: const Text(
                      '9',
                      style: style18regular,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '*';
                      });
                    },
                    child: const Text(
                      '*',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '0';
                      });
                    },
                    child: const Text(
                      '0',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        display += '#';
                      });
                    },
                    child: const Text(
                      '#',
                      style: style18regular,
                    ))
              ],
            ),
          ),
          //
          //
          //keypad button end
          //
          //
          //cantact icon start
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.import_contacts_rounded,
                      size: 30,
                      color: green,
                    )),
                //
                //
                //contact icon end
                //
                //
                // call icon button start
                //
                //
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
                //
                ///
                /// call icon button end
                /// //
                /// //
                /// backspace icon button start
                IconButton(
                    onPressed: () {
                      if (display.isNotEmpty) {
                        setState(() {
                          display = display.substring(0, display.length - 1);
                        });
                      }
                    },
                    icon: const Icon(Icons.backspace_outlined))
                //
                //
                // backspace icon button end
              ],
            ),
          ),
        ],
      ),
    );
  }
}
