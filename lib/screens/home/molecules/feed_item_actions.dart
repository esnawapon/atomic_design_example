import 'package:atomic_design_example/screens/home/atoms/feed_item_action_atom.dart';
import 'package:flutter/material.dart';

class FeedItemActions extends StatelessWidget {
  final int commentCount;
  final int shareCount;
  final int likeCount;

  const FeedItemActions({
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
        FeedItemActionAtom(icon: Icons.chat_bubble_outline, count: commentCount),
        FeedItemActionAtom(icon: Icons.repeat, count: shareCount),
        FeedItemActionAtom(icon: Icons.favorite_border, count: likeCount),
        const Icon(Icons.bookmark_border, size: 20),
      ],
    );
  }
}
