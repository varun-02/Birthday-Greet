import 'package:birthday_greet/greet_card.dart';
import 'package:birthday_greet/name_input.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  var activeScreen = 'name-screen';

  void switchScreen() {
    setState(() {
      if (activeScreen == 'name-screen') {
        activeScreen = 'greet-card';
      } else if (activeScreen == 'greet-card') {
        activeScreen = 'name-screen';
      }
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = NameInput(switchScreen);

    if (activeScreen == 'greet-card') {
      screenWidget = GreetCard(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.black,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget,
          ),
        ),
      ),
    );
  }
}
