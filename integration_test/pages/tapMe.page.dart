import 'package:flutter_test/flutter_test.dart';

import '../components/finder.dart';
import 'base.page.dart';

class TapMePage extends Page {
  TapMePage(WidgetTester tester) : super(tester);

  Future<bool> isUserNavigated() async {
    final tapMePage = findByKey('tapMePageBody');
    return isElementPresent(tapMePage);
  }
}
