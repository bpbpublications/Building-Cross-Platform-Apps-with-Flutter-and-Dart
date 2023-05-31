import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'code_30-31_app.dart' as app;
import 'package:flutter/material.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('demo group', () {
    testWidgets('demo login flow with login button tap',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();
      expect(find.text('Sign Up'), findsOneWidget);
      final Finder loginButton = find.byTooltip('Login');
      await tester.tap(loginButton);
      await tester.pumpAndSettle();
      expect(find.text('Enter Email'), findsOneWidget);
    });
  });
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
