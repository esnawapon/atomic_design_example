import 'package:atomic_design_example/helpers/context_theme_ext.dart';
import 'package:flutter/material.dart';

class LeadingIconAtom extends StatelessWidget {
  final IconData icon;
  const LeadingIconAtom(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: context.colorTheme.secondaryContainer,
      foregroundColor: context.colorTheme.onSecondaryContainer,
      child: Icon(icon),
    );
  }
}
