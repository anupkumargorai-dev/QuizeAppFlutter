import 'package:flutter/material.dart';
import 'package:quize_app/data/questions.dart';
import 'package:quize_app/quize_screen.dart';
import 'package:quize_app/start_screen.dart';
import 'package:quize_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QizeState();
  }
}

class _QizeState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAns = [];

  void addAns(String ans) {
    selectedAns.add(ans);
    if (selectedAns.length == questions.length) {
      setState(() {
        selectedAns = [];
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 144, 44, 162),
              Color.fromARGB(255, 197, 109, 213)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: activeScreen == 'result-screen'
              ? const ResultScreen()
              : activeScreen == 'start-screen'
                  ? StartScreen(switchScreen)
                  : QuizScreen(ans: addAns),
          // activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : QuizScreen(
          //         ans: addAns,
          //       ),
        ),
      ),
    );
  }
}
