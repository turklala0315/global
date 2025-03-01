import 'package:flutter/material.dart';
import 'package:global/core/providers/bottom_bar/bottom_bar.dart';
import 'package:global/ui/screens/keypad.dart';

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
      providers: [ChangeNotifierProvider(create: (_) => BottomBarProvider())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white38),
            useMaterial3: true,
          ),
          home: const Keypad()),
    );
  }
}
