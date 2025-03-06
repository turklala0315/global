import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:global/core/constant/color/colors.dart';
import 'package:global/core/constant/string/string.dart';

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
      setState(() {
        contacts = fetchedContacts;
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
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Contacts',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            contacts == null
                ? const Center(
                    child: CircularProgressIndicator(color: mainorange),
                  )
                : contacts!.isEmpty
                    ? const Center(child: Text("No contacts found."))
                    : Expanded(
                        child: ListView.builder(
                          itemCount: contacts!.length,
                          itemBuilder: (BuildContext context, int index) {
                            Uint8List? image = contacts![index].photo;
                            return ListTile(
                              leading: (image == null)
                                  ? const CircleAvatar(
                                      backgroundColor: mainorange,
                                      child: Icon(Icons.person),
                                    )
                                  : CircleAvatar(
                                      backgroundImage: MemoryImage(image),
                                    ),
                              title: Text(contacts![index].name.first),
                              onTap: () {},
                            );
                          },
                        ),
                      ),
          ],
        ),
      ),
    );
  }
}
