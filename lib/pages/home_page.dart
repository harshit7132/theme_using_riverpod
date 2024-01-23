// home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theme_using_riverpod/riverpod/theme_riverpod.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final theme = ref.read(themeProvider);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Theme Switcher'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Switch between Dark and Light Themes: '),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => theme.toggleDark(),
                      child: const Text('Dark'),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => theme.toggleLight(),
                      child: const Text('Light'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
