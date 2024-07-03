import 'dart:core';

import 'package:flutter/material.dart';

class Widget4 extends StatefulWidget {
  const Widget4({super.key});

  @override
  State<Widget4> createState() => _Widget4State();
}

class _Widget4State extends State<Widget4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Michael Samuel'), backgroundColor: Colors.green),
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Scaffold(
          appBar: AppBar(
              title: const Text('Michael Samuel'),
              backgroundColor: Colors.green),
        ),
      ),
    );
  }
}
