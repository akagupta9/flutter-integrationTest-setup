import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../pages/clickMe.page.dart';
import '../pages/home.page.dart';
import '../pages/tapMe.page.dart';
import '../test-init.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  group('ClickMe page', () {
    testWidgets('Verify Screen UI validations', (WidgetTester tester) async {
      await initTest(tester);
      final homePage = HomePage(tester);

      expect(await homePage.isClickMeButtonPresent(), true,
          reason: "Click Me Button not present");
      expect(await homePage.isTapMeButtonPresent(), true,
          reason: "Tap Me Button not present");

      await homePage.wait(timeInSec: 1);
    });

    testWidgets('Validate Navigation to ClickMe page',
        (WidgetTester tester) async {
      await initTest(tester);
      final homePage = HomePage(tester);
      final clickMePage = ClickMePage(tester);

      await homePage.navigateToClickMeButton();
      await homePage.wait(timeInSec: 2);

      expect(await clickMePage.isUserNavigated(), true);
    });
  });
}
