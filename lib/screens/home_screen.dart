import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          '오늘의 웹툰s',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
      ),
    );
  }
}
