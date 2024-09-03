import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF202020),
        appBar: AppBar(
          toolbarHeight: 60,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/circle-face.jpg'),
                  radius: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ],
          ),
          backgroundColor: const Color(0xFF202020),
        ),
      ),
    );
  }
}
