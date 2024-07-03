import 'package:first_app/widget_1.dart';
import 'package:first_app/widget_2.dart';
import 'package:first_app/widget_3.dart';
import 'package:first_app/widget_4.dart';
import 'package:first_app/widget_5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue, // Set your desired AppBar color here
        ),
      ),
      home: const Widget5(),
    );
  }
}
