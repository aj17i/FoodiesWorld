import 'package:flutter/material.dart';

class JapanesePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Japanese Recipes', style: TextStyle(fontSize: 35, fontFamily: 'OoohBaby'),),
        backgroundColor: const Color.fromARGB(255, 0, 21, 37),
      ),
      body: ListView(
        children: [
          // Add Lebanese recipes here
        ],
      ),
    );
  }
}
