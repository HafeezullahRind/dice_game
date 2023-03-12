import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  DicePageState createState() => DicePageState();
}

class DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeImage();
              },
              child: Image.asset('Images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  changeImage();
                },
                child: Image.asset('Images/dice$rightdice.png')),
          )
        ],
      ),
    );
  }

  void changeImage() {
    setState(() {
      rightdice = Random().nextInt(6) + 1;
      leftdice = Random().nextInt(6) + 1;
    });
  }
}
