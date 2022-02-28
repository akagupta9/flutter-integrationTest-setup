import 'package:flutter_test/flutter_test.dart';

import './../lib/main.dart' as myApp;

Future<void> initTest(WidgetTester tester) async {
  myApp.main();
  await tester.pumpAndSettle();
}
