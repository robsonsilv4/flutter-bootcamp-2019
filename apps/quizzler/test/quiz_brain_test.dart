import 'package:flutter_test/flutter_test.dart';

import 'package:quizzler/quiz_brain.dart';

void main() {
  group(QuizBrain, () {
    final brain = QuizBrain();

    test('starts on the first question', () {
      expect(
        brain.getQuestion(),
        'Some cats are actually allergic to humans',
      );
    });

    test('returns the answer for the current question', () {
      expect(brain.getAnswer(), isTrue);
    });

    test('advances to the next question', () {
      brain.nextQuestion();

      expect(
        brain.getQuestion(),
        'You can lead a cow down stairs but not up stairs.',
      );
    });

    test('is not finished on the first question', () {
      expect(brain.isFinished(), isFalse);
    });

    test('resets to the first question', () {
      for (var i = 0; i < 5; i++) {
        brain.nextQuestion();
      }

      brain.reset();

      expect(
        brain.getQuestion(),
        'Some cats are actually allergic to humans',
      );
    });
  });
}
