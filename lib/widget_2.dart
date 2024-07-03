import 'package:flutter/material.dart';

class Widget2 extends StatefulWidget {
  const Widget2({super.key});

  @override
  State<Widget2> createState() => _Widget2State();
}

class _Widget2State extends State<Widget2> {
  Offset _offset = const Offset(200, 250);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Michael Samuel'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext, BoxConstraints) {
            return Stack(
              children: [
                Positioned(
                  left: _offset.dx,
                  top: _offset.dy,
                  child: LongPressDraggable(
                    feedback: Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/6/62/Kermit_the_Frog.jpg',
                      height: 200,
                      color: Colors.amberAccent,
                      colorBlendMode: BlendMode.colorBurn,
                    ),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/6/62/Kermit_the_Frog.jpg',
                      height: 200,
                    ),
                    onDragEnd: (details) {
                      setState(() {
                        double adjustment = MediaQuery.of(context).size.height -
                            BoxConstraints.maxHeight;
                        _offset = Offset(
                            details.offset.dx, details.offset.dy - adjustment);
                      });
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
