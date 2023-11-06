import 'dart:io';

class Question {
  String? text;
  bool? answer;
  Question(this.answer, this.text);
}

class Quiz {
  List<Question>? questions;
  int _currentIndex = 0;
  int score = 0;
  Quiz(this.questions);

  Question? getCurrentQuestion() {
    if (questions != null && _currentIndex < questions!.length) {
      return questions![_currentIndex];
    } else {
      return null;
    }
  }

  void answerQuestion(bool answer) {
    Question currentQuestion = getCurrentQuestion()!;
    if (currentQuestion.answer == answer) {
      score++;
    }
    _currentIndex++;
  }

  bool get isQuizComplete => _currentIndex == questions!.length;
}

class User {
  String? name;
  int? score;
  User(this.name, this.score);

  void viewScore() {
    print('$name\' score is $score');
  }
}

void main(List<String> args) {
  stdout.write('Welcome to small Quiz : ');

  stdout.write('Enter Your Name : ');
  String userName = stdin.readLineSync()!;
  User user = User(userName, 0);
  List<Question> questions = [
    Question(true, 'is your name $userName'),
    Question(true, 'Dart is Probgraming Lanuage'),
    Question(false, 'is Delhi Country'),
    Question(false, 'is it month of September'),
    Question(true, 'are you developer'),
  ];
  Quiz quiz = Quiz(questions);

  while (!quiz.isQuizComplete) {
    Question? currentQuiz = quiz.getCurrentQuestion();

    if (currentQuiz != null) {
      stdout.write('${currentQuiz.text}');
      stdout.writeln();
      stdout.write('Your answer ( true / false) : ');
      String userInput = stdin.readLineSync()!.toLowerCase();
      if (userInput == 'true' || userInput == 't') {
        quiz.answerQuestion(true);
      } else if (userInput == 'false' || userInput == 'f') {
        quiz.answerQuestion(false);
      } else {
        print('Invalid input. Please enter "true/t" or "false/f".');
      }
    }
  }
  user.score = quiz.score;
  user.viewScore();
}
