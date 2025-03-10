import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:global/core/constant/color/colors.dart';
import 'package:global/core/constant/string/string.dart';
import 'package:global/ui/screens/add_to_contact_screen/add_to_contact.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<Contact>? contacts = [];

  @override
  void initState() {
    super.initState();
    getPhoneData();
  }

  Future<void> getPhoneData() async {
    if (await FlutterContacts.requestPermission()) {
      List<Contact> fetchedContacts = await FlutterContacts.getContacts(
          withProperties: true, withPhoto: true);

      List<Contact> filteredContacts = fetchedContacts
          .where((contact) => contact.phones.isNotEmpty)
          .toList();

      setState(() {
        contacts = filteredContacts;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Row(children: [
              Image.asset(
                '$staticAssets/logo.png',
                scale: 2,
              )
            ]),
            SizedBox(height: 10.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Contacts',
                style: TextStyle(fontSize: 45.sp, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.h),
            contacts == null || contacts!.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(color: mainorange),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: contacts!.length,
                      itemBuilder: (BuildContext context, int index) {
                        Uint8List? image = contacts![index].photo;
                        String number = contacts![index].phones.isNotEmpty
                            ? contacts![index].phones.first.number
                            : "---";
                        return ListTile(
                          leading: (image == null)
                              ? const CircleAvatar(
                                  backgroundColor: mainorange,
                                  child: Icon(Icons.person),
                                )
                              : CircleAvatar(
                                  backgroundImage: MemoryImage(image),
                                ),
                          title: Text(contacts![index].displayName),
                          subtitle: Text(number),
                          onTap: () async {
                            Navigator.pop(context,
                                contacts![index].phones.first.normalizedNumber);
                          },
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: mainorange,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddToContact()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
