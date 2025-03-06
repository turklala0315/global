import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:global/core/providers/bottom_bar/bottom_bar.dart';
import 'package:global/ui/screens/contact_screen/contact_screen.dart';
import 'package:global/ui/screens/root_screen/root_screen.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomBarProvider()),
        // ChangeNotifierProvider(create: (_) => DialerProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white38),
            useMaterial3: true,
          ),
          home: const RootScreen()),
    );
  }
}
