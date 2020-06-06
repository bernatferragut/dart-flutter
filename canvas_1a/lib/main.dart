import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() => runApp(Sketch());

class Sketch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
          child: LayoutBuilder(
            builder: (_, constraints)=> Container(
              width: constraints.widthConstraints().maxWidth,
              height: constraints.heightConstraints().maxHeight,
              color: Colors.black,
              child: CustomPaint(painter: Art()),
            ),
          ),
        ),
      ),
    );
  }
}

class Art extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define a paint object stroke style
    final paintStroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.indigo;
      // Define a paint object fill style
    final paintFill = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.amber[100];
      
    // Define a Rectangle
    // canvas.drawRect(
    //   Rect.fromLTWH(20,20,20,20),
    //   paintFill,
    // );

    // Define a Circle
    canvas.drawOval(
      Rect.fromLTWH(size.width/2, size.height/2, 20, 20), paintFill);
  }

  @override
  bool shouldRepaint(Art oldDelegate) => false;
}


