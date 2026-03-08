import 'package:atomic_design_example/models/quick_menu.dart';
import 'package:flutter/material.dart';

class TopMenuButtonAtom extends StatelessWidget {
  final QuickMenu quickMenu;

  const TopMenuButtonAtom({
    super.key,
    required this.quickMenu,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        fixedSize: WidgetStatePropertyAll(Size(100, double.infinity)),
      ),
      onPressed: () {},
      child: Column(
        children: [
          Icon(
            IconData(
              quickMenu.icon,
              fontFamily: "MaterialIcons",
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              quickMenu.label,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
