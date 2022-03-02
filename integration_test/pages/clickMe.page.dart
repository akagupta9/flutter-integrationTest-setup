import 'package:flutter_test/flutter_test.dart';

import '../components/finder.dart';
import 'base.page.dart';

class ClickMePage extends Page {
  ClickMePage(WidgetTester tester) : super(tester);

  Future<bool> isUserNavigated() async {
    final tapMePage = findByKey('clickMePageBody');
    return isElementPresent(tapMePage);
  }
}
