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
  Widget inputField() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white38, borderRadius: BorderRadius.circular(20)),
      child: TextFormField(
        decoration: const InputDecoration(border: InputBorder.none),
        controller: Textfield,
      ),
    );
  }

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
                ),
              ],
            ),
          ),
          //
          const SizedBox(height: 30),
          //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: inputField(),
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      '1',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      '2',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {},
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
                    onPressed: () {},
                    child: const Text(
                      '4',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      '5',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {},
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
                    onPressed: () {},
                    child: const Text(
                      '7',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      '8',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {},
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
                    onPressed: () {},
                    child: const Text(
                      '*',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      '0',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      '#',
                      style: style18regular,
                    ))
              ],
            ),
          ),
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
                InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 35,
                    backgroundColor: mainorange,
                    child: Icon(
                      Icons.call,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.backspace_outlined))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
