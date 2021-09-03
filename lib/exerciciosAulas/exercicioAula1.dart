import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sou rico'),
          backgroundColor: Colors.yellow[700],
        ),
        backgroundColor: Colors.yellow[500],
        body: Center(
          child: Image(
            image: AssetImage('image/Ben-te-vi.jpg'),
          ),
        ),
      ),
    ),
  );
}
