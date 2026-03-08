import 'package:atomic_design_example/helpers/context_theme_ext.dart';
import 'package:flutter/material.dart';

class FeedTileHeader extends StatelessWidget {
  final String username;
  final String userhandle;
  final String time;

  const FeedTileHeader({
    super.key,
    required this.username,
    required this.userhandle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    final names = username.split(' ');
    final avatarName = '${names.first[0]}${names.last[0]}';
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: context.colorTheme.secondaryContainer,
          child: Text(avatarName),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Row(
            children: [
              Text(
                username,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorTheme.onSurface,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                userhandle,
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colorTheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                "· $time",
                style: context.textTheme.bodySmall?.copyWith(
                  color: context.colorTheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        const Icon(Icons.more_horiz),
      ],
    );
  }
}
