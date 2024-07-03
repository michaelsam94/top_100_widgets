import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  const Widget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("show material button"),
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                padding: const EdgeInsets.all(20),
                content: const Text('subscribe to the channel'),
                leading: const Icon(Icons.notifications_active_outlined),
                elevation: 5,
                backgroundColor: Colors.white12,
                actions: [
                  TextButton(onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  }, child: const Text('Dismiss'))
                ],
              )
            );
          },
        ),
      ),
    );
  }

}