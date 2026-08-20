import 'package:quizzler/question.dart';

class QuizBrain {
  final List<Question> _questions = const [
    Question(
      'Some cats are actually allergic to humans',
      answer: true,
    ),
    Question(
      'You can lead a cow down stairs but not up stairs.',
      answer: false,
    ),
    Question(
      'Approximately one quarter of human bones are in the feet.',
      answer: true,
    ),
    Question(
      "A slug's blood is green.",
      answer: true,
    ),
    Question(
      'Buzz Aldrin\'s mother\'s maiden name was "Moon".',
      answer: true,
    ),
    Question(
      'It is illegal to pee in the Ocean in Portugal.',
      answer: true,
    ),
    Question(
      'No piece of square dry paper can be folded in half more than 7 times.',
      answer: false,
    ),
    Question(
      'In London, UK, if you happen to die in the House of Parliament, you '
      'are technically entitled to a state funeral, because the building is '
      'considered too sacred a place.',
      answer: true,
    ),
    Question(
      'The loudest sound produced by any animal is 188 decibels. That animal '
      'is the African Elephant.',
      answer: false,
    ),
    Question(
      'The total surface area of two human lungs is approximately 70 square '
      'metres.',
      answer: true,
    ),
    Question(
      'Google was originally called "Backrub".',
      answer: true,
    ),
    Question(
      "Chocolate affects a dog's heart and nervous system; a few ounces are "
      'enough to kill a small dog.',
      answer: true,
    ),
    Question(
      'In West Virginia, USA, if you accidentally hit an animal with your car, '
      'you are free to take it home to eat.',
      answer: true,
    ),
  ];
  int _questionNumber = 0;

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questions[_questionNumber].question;
  }

  bool getAnswer() {
    return _questions[_questionNumber].answer;
  }

  bool isFinished() {
    return _questionNumber >= _questions.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
