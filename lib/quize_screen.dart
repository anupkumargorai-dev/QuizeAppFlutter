import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quize_app/answer_button.dart';
import 'package:quize_app/data/questions.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key, required this.ans});

  void Function(String ans) ans;

  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  var currentIndex = 0;

  answerQuestion(String anss) {
    widget.ans(anss);
    setState(() {
      currentIndex = currentIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffuledAns().map((ans) {
              return AnswerButton(
                  answerTxt: ans,
                  onTap: () {
                    answerQuestion(ans);
                  });
            })
          ],
        ),
      ),
    );
  }
}
