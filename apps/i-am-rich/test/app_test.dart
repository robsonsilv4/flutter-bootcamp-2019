import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:i_am_rich/main.dart';

void main() {
  group(IAmRichApp, () {
    testWidgets('renders the app bar title', (tester) async {
      await tester.pumpWidget(const IAmRichApp());

      expect(find.text('I Am Rich'), findsOneWidget);
    });

    testWidgets('renders the gif image', (tester) async {
      await tester.pumpWidget(const IAmRichApp());

      expect(find.byType(Image), findsOneWidget);
    });
  });
}
