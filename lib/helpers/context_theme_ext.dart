import "package:flutter/material.dart";

extension ContextThemeExt on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorTheme => theme.colorScheme;
}
