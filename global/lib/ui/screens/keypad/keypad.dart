import 'package:flutter/material.dart';
import 'package:global/core/constant/color/colors.dart';
import 'package:global/core/constant/string/string.dart';
import 'package:global/core/constant/text_style/text_style.dart';
import 'package:global/ui/screens/add_to_contact_screen/add_to_contact.dart';
import 'package:global/ui/screens/contact_screen/contact_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Keypad extends StatefulWidget {
  const Keypad({super.key});

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  String display = '';
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
          SizedBox(height: 30.h),

          Text(
            display,
            style: TextStyle(
              fontSize: 30.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis, // Prevents overflow
            maxLines: 1,
          ),

          TextButton(
            onPressed: () async {
              String selectedContact = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddToContact()));
              setState(() {
                display = selectedContact;
              });
            },
            child: Text(
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
                    onPressed: () {
                      if (display.length < 15) {
                        setState(() {
                          display += '1';
                        });
                      }
                    },
                    child: Text(
                      '1',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      if (display.length < 15) {
                        setState(() {
                          display += '2';
                        });
                      }
                    },
                    child: Text(
                      '2',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      if (display.length < 15) {
                        setState(() {
                          display += '3';
                        });
                      }
                    },
                    child: Text(
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
                      if (display.length < 15) {
                        setState(() {
                          display += '4';
                        });
                      }
                    },
                    child: Text(
                      '4',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      if (display.length < 15) {
                        setState(() {
                          display += '5';
                        });
                      }
                    },
                    child: Text(
                      '5',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      if (display.length < 15) {
                        setState(() {
                          display += '6';
                        });
                      }
                    },
                    child: Text(
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
                      if (display.length < 15) {
                        setState(() {
                          display += '7';
                        });
                      }
                    },
                    child: Text(
                      '7',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      if (display.length < 15) {
                        setState(() {
                          display += '8';
                        });
                      }
                    },
                    child: Text(
                      '8',
                      style: style18regular,
                    )),
                TextButton(
                    onPressed: () {
                      if (display.length < 15) {
                        setState(() {
                          display += '9';
                        });
                      }
                    },
                    child: Text(
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
                      if (display.length < 15) {
                        setState(() {
                          display += '*';
                        });
                      }
                    },
                    child: Text(
                      '*',
                      style: style18regular,
                    )),
                TextButton(
                  onLongPress: () {
                    if (display.length <= 1) {
                      setState(() {
                        display += '+';
                      });
                    }
                  },
                  onPressed: () {
                    if (display.length < 15) {
                      setState(() {
                        display += '0';
                      });
                    }
                  },
                  child: RichText(
                    text: TextSpan(
                        text: '0\n',
                        style: style18regular,
                        children: [TextSpan(text: '+', style: style14Brown)]),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      if (display.length < 15) {
                        setState(() {
                          display += '#';
                        });
                      }
                    },
                    child: Text(
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
                    onPressed: () async {
                      // bool permission =
                      //     await FlutterNativeContactPicker.requestPermission();
                      String selectedContact = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContactScreen()));
                      setState(() {
                        display = selectedContact;
                      });
                    },
                    icon: const Icon(
                      Icons.import_contacts_rounded,
                      size: 30,
                      color: green,
                    )),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 50.r,
                    backgroundColor: mainorange,
                    child: const Icon(
                      Icons.call,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      if (display.isNotEmpty) {
                        setState(() {
                          display = display.substring(0, display.length - 1);
                        });
                      }
                    },
                    icon: const Icon(Icons.backspace_outlined))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
