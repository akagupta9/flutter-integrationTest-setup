import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import '../pages/home.page.dart';
import '../pages/tapMe.page.dart';
import '../test-init.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
      as IntegrationTestWidgetsFlutterBinding;
  binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

  group('TapMe page', () {
    testWidgets('Validate Navigation to TapMe page',
        (WidgetTester tester) async {
      await initTest(tester);
      final homePage = HomePage(tester);
      final tapMePage = TapMePage(tester);

      await homePage.navigateToTapMeButton();
      await homePage.wait(timeInSec: 5);

      expect(await tapMePage.isUserNavigated(), true);
    });
  });
}
