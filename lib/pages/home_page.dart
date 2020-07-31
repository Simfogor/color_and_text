import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int alpha = 255, red = 255, green = 255, blue = 255;
  int textcolor = 0;

  void _onetap() {
    setState(() {
      red = random.nextInt(256); // 0 .. 255
      green = random.nextInt(256); // 0 .. 255
      blue = random.nextInt(256); // 0 .. 255
      if (red < 100 && green < 100 && blue < 100) {
        // switch text black or while
        textcolor = 255; // white text
      } else {
        textcolor = 0; // black text
      }
    });
  }

  void _doublelongtap() {
    setState(() {
      if (red < 100 && green < 100 && blue < 100) {
        // switch text black or while
        textcolor = 255; // white text
      } else {
        textcolor = 0; // black text
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(alpha, red, green, blue),
      //appBar: AppBar(title: Text('Color and Text')),
      body: Container(
        child: GestureDetector(
          onTap: () {
            print("Container was tapped"); // debug log
            _onetap();
          },
          onDoubleTap: () {
            print("Container was double tapped"); // debug log
            red = green = blue = 0;
            _doublelongtap();
          },
          onLongPress: () {
            print("Container was long tapped"); // debug log
            red = green = blue = 255;
            _doublelongtap();
          },
          child: Container(
            decoration: BoxDecoration(),
            alignment: Alignment.center,
            child: Text(
              'Hey there',
              style: TextStyle(
                  fontSize: 36,
                  color: Color.fromARGB(255, textcolor, textcolor, textcolor)),
            ),
          ),
        ),
      ),
    );
  }
}
