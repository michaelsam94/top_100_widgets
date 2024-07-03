import 'package:flutter/material.dart';

class Widget3 extends StatefulWidget {
  const Widget3({super.key});

  @override
  State<Widget3> createState() => _Widget3State();
}

class _Widget3State extends State<Widget3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Modal Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 400,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('close'),
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
