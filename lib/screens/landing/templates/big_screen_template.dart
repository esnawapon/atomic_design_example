import 'package:atomic_design_example/helpers/context_screen_ext.dart';
import 'package:flutter/material.dart';

class BigScreenTemplate extends StatelessWidget {
  final Widget sideMenu;
  final Widget body;
  const BigScreenTemplate({
    super.key,
    required this.sideMenu,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (context.isBigScreen)
          SizedBox(
            width: 300,
            child: sideMenu,
          ),
        Expanded(child: body),
      ],
    );
  }
}
