import 'package:atomic_design_example/helpers/context_theme_ext.dart';
import 'package:atomic_design_example/helpers/widget_padding_ext.dart';
import 'package:flutter/material.dart';

class FeedTileBody extends StatelessWidget {
  final String imageUrl;
  final String content;

  const FeedTileBody({
    super.key,
    required this.imageUrl,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          content,
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorTheme.onSurface,
          ),
        ),
        if (imageUrl.isNotEmpty)
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => Container(
                height: 200,
                alignment: Alignment.center,
                child: const Icon(Icons.broken_image),
              ),
            ),
          ).pad(top: 10),
      ],
    );
  }
}
