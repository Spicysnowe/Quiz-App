import 'package:flutter/material.dart';
import 'package:quiz_third_app/data/questions.dart';
import 'package:quiz_third_app/result_screen.dart';
import "package:quiz_third_app/start_screen.dart";
import 'package:quiz_third_app/questions_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();

  }
}

class _QuizState extends State<Quiz>{
List<String> selectedAnswer= [];
Widget? activeScreen;

@override
  void initState() {
     activeScreen= StartScreen(switchScreen);
    super.initState();
  }

void switchScreen (){
  setState(() {
    activeScreen= QuestionsScreen(chooseAnswer);
  });
}

void chooseAnswer (String answer){
  selectedAnswer.add(answer);

  if(selectedAnswer.length==questions.length){
    setState(() {
      
      activeScreen=  ResultsScreen(selectedAnswer);
    });
  }
}

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body:Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)

              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
          ),
        ),
         );
  }
}