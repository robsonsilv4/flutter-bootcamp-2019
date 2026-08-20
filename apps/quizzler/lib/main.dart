import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizzler/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizzler',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final QuizBrain _quizBrain = QuizBrain();
  final List<Widget> _score = [];

  void _checkAnswer(bool userAnswer) {
    final correctAnswer = _quizBrain.getAnswer();
    setState(() {
      if (_quizBrain.isFinished()) {
        _showFinishedAlert();
        _quizBrain.reset();
        _score.clear();
      } else {
        if (correctAnswer == userAnswer) {
          _score.add(
            const Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          _score.add(
            const Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        _quizBrain.nextQuestion();
      }
    });
  }

  void _showFinishedAlert() {
    unawaited(
      Alert(
        context: context,
        title: 'Finished Game!',
        desc: 'Play Again.',
        style: const AlertStyle(
          titleStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          descStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            width: 120,
            child: const Text(
              'Play',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ).show(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                _quizBrain.getQuestion(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Material(
              color: Colors.green,
              child: InkWell(
                onTap: () => _checkAnswer(true),
                child: const Center(
                  child: Text(
                    'True',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Material(
              color: Colors.red,
              child: InkWell(
                onTap: () => _checkAnswer(false),
                child: const Center(
                  child: Text(
                    'False',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: _score,
        ),
      ],
    );
  }
}
