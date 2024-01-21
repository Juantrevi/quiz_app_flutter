import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Image(
              image: AssetImage('assets/images/quiz-logo.png'),
              height: 300,
              width: 300,
              color: Color.fromARGB(150, 255, 255, 255)
            ),
            const SizedBox(height: 30),
            const Text('Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 24,
                //fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz')
            ),
          ],
        ),

    );
  }
}
