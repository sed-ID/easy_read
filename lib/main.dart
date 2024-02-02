import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontsize = 40;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: TextField(
                textInputAction: TextInputAction.done,
                style: TextStyle(fontSize: _fontsize),
                maxLines: null,
              ),
            ),
            Slider(
              value: _fontsize,
              onChanged: changeFontSize ,
              min: 30,
              max: 200,
            ),
          ],
        ),
      ),
    );
  }
  void changeFontSize(double newSize) {
    setState(() {
      _fontsize = newSize;
    });
  }
}
