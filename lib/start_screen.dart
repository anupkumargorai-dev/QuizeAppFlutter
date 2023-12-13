import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuize, {super.key});

  final void Function() startQuize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(143, 255, 255, 255),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Learn Flutter in Fun Way!',
            style: GoogleFonts.lato(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () {
              startQuize();
            },
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
