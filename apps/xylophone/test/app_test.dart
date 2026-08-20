import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:xylophone/main.dart';

import 'helpers/helpers.dart';

void main() {
  group(XylophoneApp, () {
    testWidgets('renders the seven keys', (tester) async {
      await tester.pumpApp(const XylophoneApp());

      expect(find.byType(InkWell), findsNWidgets(7));
    });

    testWidgets('renders the seven key colors', (tester) async {
      await tester.pumpApp(const XylophoneApp());

      final materials = tester.widgetList<Material>(find.byType(Material));

      final colors = materials
          .map((material) => material.color)
          .where((color) => color != null)
          .toList();

      expect(
        colors,
        containsAll(<Color?>[
          Colors.red,
          Colors.orange,
          Colors.yellow,
          Colors.green,
          Colors.teal,
          Colors.blue,
          Colors.purple,
        ]),
      );
    });
  });
}
