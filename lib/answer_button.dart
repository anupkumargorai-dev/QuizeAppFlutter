import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answerTxt, required this.onTap});

  final String answerTxt;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            backgroundColor: const Color.fromARGB(255, 195, 101, 211),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        child: Text(
          answerTxt,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
