import "package:flutter/widgets.dart";

extension WidgetPaddingExt on Widget {
  /// [x] = horizontal = left,right
  /// [y] = vertical = top,bottom
  Padding pad({
    Key? key,
    double? left,
    double? right,
    double? top,
    double? bottom,
    double? x,
    double? y,
    double all = 0.0,
  }) => Padding(
    key: key,
    padding: EdgeInsets.only(
      left: left ?? x ?? all,
      right: right ?? x ?? all,
      top: top ?? y ?? all,
      bottom: bottom ?? y ?? all,
    ),
    child: this,
  );
}

extension WidgetSliverPaddingExt on Widget {
  /// [x] = horizontal = left,right
  /// [y] = vertical = top,bottom
  SliverPadding sliverPad({
    Key? key,
    double? left,
    double? right,
    double? top,
    double? bottom,
    double? x,
    double? y,
    double all = 0.0,
  }) => SliverPadding(
    key: key,
    padding: EdgeInsets.only(
      left: left ?? x ?? all,
      right: right ?? x ?? all,
      top: top ?? y ?? all,
      bottom: bottom ?? y ?? all,
    ),
    sliver: this,
  );
}
