import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../pages/home.page.dart';
import '../test-init.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Sanity End to End Test', () {
    testWidgets('Verify Screen UI validations', (WidgetTester tester) async {
      await initTest(tester);
      final homePage = HomePage(tester);
      expect(await homePage.isClickMeButtonPresent(), true,
          reason: "Click Me Button not present");
      expect(await homePage.isTapMeButtonPresent(), true,
          reason: "Tap Me Button not present");

      await homePage.wait(timeInSec: 5);
    });

    testWidgets('Validate Navigation to ClickMe page',
        (WidgetTester tester) async {
      await initTest(tester);
      final homePage = HomePage(tester);
      await homePage.navigateToClickMeButton();
      await homePage.wait(timeInSec: 5);
    });
  });
}
