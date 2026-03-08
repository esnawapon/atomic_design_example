import 'package:atomic_design_example/screens/home/atoms/feed_item_action_atom.dart';
import 'package:flutter/material.dart';

class FeedTileActions extends StatelessWidget {
  final int commentCount;
  final int shareCount;
  final int likeCount;

  const FeedTileActions({
    super.key,
    required this.commentCount,
    required this.shareCount,
    required this.likeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FeedTileActionAtom(icon: Icons.chat_bubble_outline, count: commentCount),
        FeedTileActionAtom(icon: Icons.repeat, count: shareCount),
        FeedTileActionAtom(icon: Icons.favorite_border, count: likeCount),
        const Icon(Icons.bookmark_border, size: 20),
      ],
    );
  }
}
