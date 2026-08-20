import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group(CalculatorBrain, () {
    test('calculates the BMI with one decimal place', () {
      final brain = CalculatorBrain(height: 180, weight: 80);

      expect(brain.calculateBMI(), '24.7');
    });

    test('classifies a normal BMI', () {
      final brain = CalculatorBrain(height: 180, weight: 80)..calculateBMI();

      expect(brain.getResults(), 'Normal');
      expect(
        brain.getInterpretation(),
        'You have a normal body weight. Good job!',
      );
    });

    test('classifies an overweight BMI', () {
      final brain = CalculatorBrain(height: 180, weight: 100)..calculateBMI();

      expect(brain.getResults(), 'Overweight');
      expect(
        brain.getInterpretation(),
        'You have a higher than normal body weight. Try to exercise more.',
      );
    });

    test('classifies an underweight BMI', () {
      final brain = CalculatorBrain(height: 180, weight: 50)..calculateBMI();

      expect(brain.getResults(), 'Underweight');
      expect(
        brain.getInterpretation(),
        'You have a lower than normal body weight. You can eat a bit more.',
      );
    });
  });
}
