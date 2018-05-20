import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:moviesflutter/main.dart';

void main() {
  testWidgets('Movies present', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(new MoviesApp());

    //check that the two movies are present
    expect(find.text('Batman'), findsOneWidget);
    expect(find.text('Superman'), findsOneWidget);
  });
}