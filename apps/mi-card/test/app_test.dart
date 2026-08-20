import 'package:flutter_test/flutter_test.dart';

import 'package:mi_card/main.dart';

void main() {
  group(MiCardApp, () {
    testWidgets('renders the name and initials', (tester) async {
      await tester.pumpWidget(const MiCardApp());

      expect(find.text('Robson Silva'), findsOneWidget);
      expect(find.text('RS'), findsOneWidget);
    });

    testWidgets('renders contact information', (tester) async {
      await tester.pumpWidget(const MiCardApp());

      expect(find.text('+55 (88) 99805-1653'), findsOneWidget);
      expect(find.text('robsonsilv410@gmail.com'), findsOneWidget);
    });
  });
}
