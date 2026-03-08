import 'package:atomic_design_example/helpers/context_theme_ext.dart';
import 'package:flutter/material.dart';

class FeedItemActionAtom extends StatelessWidget {
  final IconData icon;
  final int count;

  const FeedItemActionAtom({
    super.key,
    required this.icon,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
          color: context.colorTheme.onSurfaceVariant,
        ),
        const SizedBox(width: 5),
        Text(
          count.toString(),
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorTheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
