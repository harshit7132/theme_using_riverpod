import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theme_using_riverpod/pages/home_page.dart';
import 'package:theme_using_riverpod/riverpod/theme_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final theme = ref.watch(themeProvider);
        return MaterialApp(
          theme: theme.themeData,
          home: const HomePage(),
        );
      },
    );
  }
}
