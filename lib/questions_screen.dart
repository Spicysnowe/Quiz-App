import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:quiz_third_app/res/answer_button.dart';
import 'package:quiz_third_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';


class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen(this.onSelectAnswer,{super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{

var currentQuestionindex =0;

void answerQuestion(String selectedAnswer){
  widget.onSelectAnswer(selectedAnswer);
  setState(() {
    currentQuestionindex++;
  });
}


  @override
  Widget build(context){
    final currentQuestion = questions[currentQuestionindex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
           
           Text(
            currentQuestion.text, 
            style: GoogleFonts.lato(
              color:const Color.fromARGB(255, 201, 153, 251),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,),
      
      
           const SizedBox(height: 30 ,),
      
      
          ...currentQuestion.getShuffuledAnswers().map((item) {
            return AnswerButton(item, (){
              answerQuestion(item);
            });
          })
                 
        ],),
      ),
    );
  }
}