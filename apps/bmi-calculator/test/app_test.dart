import 'package:bmi_calculator/main.dart';
import 'package:flutter_test/flutter_test.dart';

import 'helpers/helpers.dart';

void main() {
  group(BMICalculator, () {
    testWidgets('renders the input page', (tester) async {
      await tester.pumpApp(const BMICalculator());

      expect(find.text('BMI CALCULATOR'), findsOneWidget);
      expect(find.text('MALE'), findsOneWidget);
      expect(find.text('FEMALE'), findsOneWidget);
      expect(find.text('HEIGHT'), findsOneWidget);
      expect(find.text('WEIGHT'), findsOneWidget);
      expect(find.text('AGE'), findsOneWidget);
      expect(find.text('CALCULATE'), findsOneWidget);
    });

    testWidgets('navigates to the result page on calculate', (tester) async {
      await tester.pumpApp(const BMICalculator());

      await tester.tap(find.text('CALCULATE'));
      await tester.pumpAndSettle();

      expect(find.text('Your Result'), findsOneWidget);
      expect(find.text('25.0'), findsOneWidget);
      expect(find.text('NORMAL'), findsOneWidget);
      expect(find.text('RE-CALCULATE'), findsOneWidget);
    });

    testWidgets('returns to the input page on re-calculate', (tester) async {
      await tester.pumpApp(const BMICalculator());

      await tester.tap(find.text('CALCULATE'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('RE-CALCULATE'));
      await tester.pumpAndSettle();

      expect(find.text('BMI CALCULATOR'), findsOneWidget);
      expect(find.text('CALCULATE'), findsOneWidget);
    });
  });
}
