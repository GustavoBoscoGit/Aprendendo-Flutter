import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello world'),
          backgroundColor: Colors.indigo[900],
        ),
        backgroundColor: Colors.indigo[300],
        body: Center(
          child: Image(
            image: AssetImage('image/Ben-te-vi.jpg'),
          ),
        ),
      ),
    ),
  );
}
