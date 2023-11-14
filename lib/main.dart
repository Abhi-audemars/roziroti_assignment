import 'package:flutter/material.dart';
import 'package:roziroti_assignment/views/account_screen.dart';
import 'package:roziroti_assignment/views/auth_screen.dart';
import 'package:roziroti_assignment/views/bottom_bar.dart';
import 'package:roziroti_assignment/views/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomBar(),
    );
  }
}