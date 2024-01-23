import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

/*
Every Flutter Widget has a built-in lifecycle:
A collection of methods that are automatically executed by Flutter (at certain points of time).

There are three extremely important (stateful) widget lifecycle methods you should be aware of:

initState(): Executed by Flutter when the StatefulWidget's State object is initialized

build(): Executed by Flutter when the Widget is built for the first time AND after setState() was called

dispose(): Executed by Flutter right before the Widget will be deleted (e.g., because it was displayed conditionally)

* */
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();

}

class _QuizState extends State<Quiz> {

  //Solution 2 for rendering screens
  var activeString = 'start-screen';

  final List<String> selectedAnswer = [];


  //Solution 1 for rendering screens
  //Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen(){
    /*setState()
    * is a method inherited from the State class
    * it tells Flutter to re-render the widget tree
    * */
    setState(() {
      //Solution 1 for rendering screens
      //activeScreen = const QuestionsScreen();

      //Solution 2 for rendering screens
      activeString = 'question-screen';
    });
  }

  void chooseAnswer(String answer){
    setState(() {
      selectedAnswer.add(answer);
    });
  }

  @override
  Widget build(BuildContext context) {

    //Solution 3 for rendering screens
    Widget screenWidget = StartScreen(switchScreen);

    if(activeString == 'question-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              ),

            ),
            //Solution 1 for rendering screens
            //child: activeScreen,
            //Solution 2 for rendering screens (Ternary operator)
            //child: activeString == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen(),
            //Solution 3 for rendering screens
            child: screenWidget
        ),
      ),
    );  }
}