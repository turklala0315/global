import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global/core/constant/color/colors.dart';
import 'package:global/core/constant/string/string.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class AddToContact extends StatefulWidget {
  const AddToContact({super.key});

  @override
  State<AddToContact> createState() => _AddToContactState();
}

class _AddToContactState extends State<AddToContact> {
  final formkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();

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
                      if (formkey.currentState!.validate()) {
                        print('all good');
                      }
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
                        controller: name,
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
                        controller: name,
                        decoration: const InputDecoration(
                          fillColor: lightgrey,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          labelText: 'Last Name',
                          labelStyle: TextStyle(color: mainorange),
                        ),
                      ),
                      //
                      SizedBox(height: 40.h),
                      //
                      IntlPhoneField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          fillColor: lightgrey,
                          filled: true,
                          labelText: 'Phone Number',
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
