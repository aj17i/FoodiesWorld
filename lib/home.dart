import 'package:flutter/material.dart';

import 'ItalianPage.dart';
import 'LebanesePage.dart';
import 'TurkishPage.dart';
import 'JapanesePage.dart';
import 'MoroccanPage.dart';
import 'AmericanPage.dart';

class Home extends StatefulWidget {
   const Home({super.key, required this.cuisines});
   final List<String> cuisines;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> cuisines = ['Lebanese','Italian' , 'Moroccan', 'Japanese', 'Turkish', 'American'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Foodies World',
          style: TextStyle(fontSize: 35, fontFamily: 'OoohBaby'),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 21, 37),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          const Center(
            child: Text(
              'Choose a Cuisine',
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'DancingScript',
                color: Colors.black45,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              itemCount: cuisines.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 20); // Adjust the height based on your preference
              },
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the respective recipe page
                      switch (index) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LebanesePage()),
                          );
                          break;
                        case 1:
                        // Navigate to ItalianPage
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ItalianPage()),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MoroccanPage()),
                          );
                          break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => JapanesePage()),
                          );
                          break;
                        case 4:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TurkishPage()),
                          );
                          break;
                        case 5:
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AmericanPage()),
                          );
                          break;

                      // Add cases for other cuisines
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 22, 72, 99),

                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        Text(
                          cuisines[index],
                          style: const TextStyle(fontSize: 50, fontFamily: 'OoohBaby'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.navigate_next,
                          size: 50.0,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
