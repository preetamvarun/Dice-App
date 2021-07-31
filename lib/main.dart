import 'package:flutter/material.dart';
import 'dart:math';

int randomNumber1 = 4;
int randomNumber2 = 3;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice Roll'),
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {


  void function1(){
    Random obj = Random();
    randomNumber1 = obj.nextInt(6)+1;
  }

  void function2(){
    Random obj = Random();
    randomNumber2 = obj.nextInt(6)+1;
  }

  @override

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (){
                  setState(() {
                    function1();
                  });
                },
                child: Image(
                  image: AssetImage('./images/dice$randomNumber1.png'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
              onPressed: (){
                setState(() {
                  function2();
                });
              },
                child: Image(
                  image: AssetImage('./images/dice$randomNumber2.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

