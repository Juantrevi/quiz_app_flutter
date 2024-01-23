import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {

  const ResultsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y questions correctly.'),
            const SizedBox(height: 20),
            const Text('List od answers and questions...'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Play again'),
            ),
          ],
        ),
      ),
    );
  }
}
