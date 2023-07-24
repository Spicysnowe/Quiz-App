import 'package:flutter/widgets.dart';

import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;


  @override
  Widget build(BuildContext context){
    return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [
                Image.asset('assets/images/quiz-logo.png',width: 300, color: Color.fromARGB(117, 255, 255, 255,),),
                const SizedBox(height: 80),
                 Text("Learn flutter the fun way", style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 237, 223, 252),
                  fontSize: 24
                ),),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(foregroundColor: Colors.white,),
                  onPressed: startQuiz, 
                  icon: Icon(Icons.arrow_right_alt), 
                  label:const Text('Start Quiz'))


              ],
            ) ,);
  }
}





