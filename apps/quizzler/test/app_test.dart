import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:quizzler/main.dart';

import 'helpers/helpers.dart';

void main() {
  group(Quizzler, () {
    testWidgets('renders the question and answer buttons', (tester) async {
      await tester.pumpApp(const Quizzler());

      expect(
        find.text('Some cats are actually allergic to humans'),
        findsOneWidget,
      );
      expect(find.text('True'), findsOneWidget);
      expect(find.text('False'), findsOneWidget);
    });

    testWidgets('shows a green check when the answer is correct', (
      tester,
    ) async {
      await tester.pumpApp(const Quizzler());

      await tester.tap(find.text('True'));
      await tester.pump();

      expect(
        find.byIcon(Icons.check),
        findsOneWidget,
      );
      expect(find.byIcon(Icons.close), findsNothing);
    });

    testWidgets('shows a red close when the answer is wrong', (tester) async {
      await tester.pumpApp(const Quizzler());

      await tester.tap(find.text('False'));
      await tester.pump();

      expect(
        find.byIcon(Icons.close),
        findsOneWidget,
      );
      expect(find.byIcon(Icons.check), findsNothing);
    });
  });
}
