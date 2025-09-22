import 'package:flutter_login_screen/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Login screen loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const Task1());

    expect(find.text('Welcome Back'), findsOneWidget);
    expect(find.text('Sign in to your account'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
  });
}
