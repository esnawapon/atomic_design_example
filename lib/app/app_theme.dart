import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme() {
    final colorScheme = ColorScheme.fromSeed(seedColor: Colors.red);
    final theme = ThemeData(
      colorScheme: colorScheme,
    );

    return theme.copyWith(
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: colorScheme.surface,
        indicatorColor: colorScheme.primaryContainer,
        indicatorShape: CircleBorder(),
        labelBehavior: .onlyShowSelected,
      ),
    );
  }
}
