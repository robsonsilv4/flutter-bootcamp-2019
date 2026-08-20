import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) async {
    view.physicalSize = const Size(1080, 2340);
    view.devicePixelRatio = 3;
    addTearDown(view.resetPhysicalSize);
    addTearDown(view.resetDevicePixelRatio);

    return pumpWidget(
      MaterialApp(
        home: widget,
      ),
    );
  }
}
