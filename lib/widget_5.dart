import 'package:flutter/material.dart';

class Widget5 extends StatefulWidget {
  const Widget5({super.key});

  @override
  State<Widget5> createState() => _Widget5State();
}

class _Widget5State extends State<Widget5> {
  final List<int> items = List<int>.generate(30, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reorderable List"),
      ),
      body: ReorderableListView(
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
        children: List.generate(
          items.length,
              (index) => ListTile(
            key: Key('$index'),
            tileColor: items[index].isOdd ? Colors.white12 : Colors.black26,
            title: Text('Item ${items[index]}'),
            trailing: const Icon(Icons.drag_handle_sharp),
          ),
        ),
      ),
    );
  }
}
