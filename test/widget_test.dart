import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio_app/main.dart';

void main() {
  testWidgets('Portfolio app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const PortfolioApp());

    // Verify that our app starts with the title 'Portfolio'
    expect(find.text('Portfolio'), findsOneWidget);

    // Tap the theme toggle button.
    await tester.tap(find.byIcon(Icons.brightness_6));
    await tester.pump();

    // You can add more specific tests here based on your app's functionality
  });
}
