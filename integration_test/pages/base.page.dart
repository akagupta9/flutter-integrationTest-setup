import 'package:flutter_test/flutter_test.dart';

class Page {
  late WidgetTester _tester;

  Page(WidgetTester tester) {
    _tester = tester;
  }

  Future<void> tapOnElement(Finder finder) async {
    await _tester.tap(finder);
  }

  Future<void> wait({timeInSec = 2}) async {
    await _tester.pump(Duration(seconds: timeInSec));
  }

  Future<void> setValue(Finder finder, String textToSet) async {
    await _tester.enterText(finder, textToSet);
  }

  Future<bool> isElementPresent(Finder finder) async {
    return _tester.any(finder);
  }
}
