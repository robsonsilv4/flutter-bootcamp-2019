import 'package:dicee/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'helpers/helpers.dart';

void main() {
  group(DiceeApp, () {
    testWidgets('renders the app bar title', (tester) async {
      await tester.pumpApp(const DiceeApp());

      expect(find.text('Dicee'), findsOneWidget);
    });

    testWidgets('renders two dice images', (tester) async {
      await tester.pumpApp(const DiceeApp());

      expect(find.byType(Image), findsNWidgets(2));
    });

    testWidgets('keeps two dice images when rolled', (tester) async {
      await tester.pumpApp(const DiceeApp());

      await tester.tap(find.byType(InkWell).first);
      await tester.pump();

      expect(find.byType(Image), findsNWidgets(2));
    });
  });
}
