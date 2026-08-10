import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bible_stories/app.dart';
import 'package:bible_stories/presentation/blocs/settings_bloc.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // BibleStoriesApp reads SettingsBloc from context, so it must be
    // provided here just like main.dart does. LoadSettings is intentionally
    // not dispatched -- Hive isn't initialized in a plain widget test -- so
    // the app renders its loading (splash) branch, which is enough to prove
    // the widget tree builds without crashing.
    await tester.pumpWidget(
      BlocProvider(
        create: (_) => SettingsBloc(),
        child: const BibleStoriesApp(),
      ),
    );
    // SplashScreen's flutter_animate effects schedule delayed timers (up to
    // ~700ms); flush those instead of pumpAndSettle, since the indeterminate
    // CircularProgressIndicator's ticker never settles on its own.
    await tester.pump(const Duration(seconds: 1));

    // Verify basic app structure
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
