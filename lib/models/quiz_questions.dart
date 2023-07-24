class QuizQuestion{
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;


// need to copy-> bcz shuffle changes the original list unlike the map

// to shuffle the answer buttons
  List<String> getShuffuledAnswers(){
    // copied the answer list into another variable
    final shuffuledAnswers= List.of(answers); 
    // shuffled the new copied list
    shuffuledAnswers.shuffle();
    // returned the list for mapping and to show on screen
    return shuffuledAnswers;
  }

}