import "package:flutter/material.dart";

extension ContextScreen on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  double get screenShortestSide => screenSize.shortestSide;
  bool get isBigScreen => screenShortestSide >= 600;
}
