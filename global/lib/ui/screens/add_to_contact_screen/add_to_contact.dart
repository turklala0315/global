import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global/core/constant/color/colors.dart';
import 'package:global/core/constant/string/string.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AddToContact extends StatefulWidget {
  final String phoneNumber;
  const AddToContact({super.key, required this.phoneNumber});

  @override
  State<AddToContact> createState() => _AddToContactState();
}

class _AddToContactState extends State<AddToContact> {
  final formkey = GlobalKey<FormState>();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController number = TextEditingController();
  @override
  void initState() {
    super.initState();
    number.text = widget.phoneNumber; // Pre-fill phone number
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 30,
                    color: darkgrey,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      () async {
                        if (formkey.currentState!.validate()) {
                          Contact newContact = Contact()
                            ..name.first = firstname.text
                            ..name.last = lastname.text
                            ..phones = [Phone(number.text)];

                          bool permission =
                              await FlutterContacts.requestPermission();
                          if (permission) {
                            await newContact.insert();
                            Navigator.pop(context, true);
                          }
                        }
                      };
                    },
                    icon: const Icon(
                      Icons.how_to_reg_outlined,
                      size: 30,
                      color: darkgrey,
                    )),
              ]),
              //
              SizedBox(height: 10.h),
              //
              Row(
                children: [
                  Image.asset(
                    '$staticAssets/logo.png',
                    scale: 2,
                  )
                ],
              ),
              Text(
                'New Contact',
                style: TextStyle(fontSize: 45.sp, fontWeight: FontWeight.bold),
              ),
              //
              SizedBox(height: 20.h),
              //
              Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: firstname,
                        decoration: const InputDecoration(
                            fillColor: lightgrey,
                            filled: true,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            labelText: 'First Name',
                            labelStyle: TextStyle(color: mainorange),
                            prefixIcon: Icon(Icons.person_2_outlined)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " Enter a valid name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      //
                      SizedBox(height: 30.h),
                      //
                      TextFormField(
                        controller: lastname,
                        decoration: const InputDecoration(
                          fillColor: lightgrey,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Last Name',
                          hintText: 'Optional',
                          hintStyle: TextStyle(color: darkgrey),
                          labelStyle: TextStyle(color: mainorange),
                        ),
                      ),
                      //
                      SizedBox(height: 40.h),
                      //
                      IntlPhoneField(
                        controller: number,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.call),
                          fillColor: lightgrey,
                          filled: true,
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(color: mainorange),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        initialCountryCode: 'PK',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
