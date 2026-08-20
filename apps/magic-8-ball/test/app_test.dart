import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:magic_8_ball/main.dart';

import 'helpers/helpers.dart';

void main() {
  group(Magic8BallApp, () {
    testWidgets('renders the app bar title', (tester) async {
      await tester.pumpApp(const Magic8BallApp());

      expect(find.text('Ask me Anything'), findsOneWidget);
    });

    testWidgets('renders the ball image', (tester) async {
      await tester.pumpApp(const Magic8BallApp());

      expect(find.byType(Image), findsOneWidget);
    });

    testWidgets('keeps the ball image when tapped', (tester) async {
      await tester.pumpApp(const Magic8BallApp());

      await tester.tap(find.byType(InkWell));
      await tester.pump();

      expect(find.byType(Image), findsOneWidget);
    });
  });
}
