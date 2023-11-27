import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Foodies World',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 221, 242, 253),
        ),
        debugShowCheckedModeBanner: false,
        home: const Home(cuisines: [])

    );
  }
}