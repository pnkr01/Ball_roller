import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Ballpage(),
      ),
    );

class Ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue[400],
        centerTitle: true,
      ),
      body: Ballfun(),
    );
  }
}

class Ballfun extends StatefulWidget {
  @override
  _BallfunState createState() => _BallfunState();
}

class _BallfunState extends State<Ballfun> {
  int num = 5;
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              num = Random().nextInt(5) + 1;
              print('I got clicked $i times..');
              i++;
            });
          },
          child: Image.asset('images/ball$num.png'),
        ),
      ),
    );
  }
}
