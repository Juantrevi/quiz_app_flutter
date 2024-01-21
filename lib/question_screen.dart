import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question 1',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          AnswerButton(answerText: 'answer 1', onTap: () {}),
          AnswerButton(answerText: 'answer 2', onTap: () {}),
          AnswerButton(answerText: 'answer 3', onTap: () {}),
          AnswerButton(answerText: 'answer 4', onTap: () {}),
        ],
      ),
    );
  }
}
