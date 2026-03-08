import 'package:atomic_design_example/helpers/widget_padding_ext.dart';
import 'package:atomic_design_example/models/feed.dart';
import 'package:atomic_design_example/screens/home/molecules/feed_item_actions.dart';
import 'package:atomic_design_example/screens/home/molecules/feed_item_body.dart';
import 'package:atomic_design_example/screens/home/molecules/feed_item_header.dart';
import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  final Feed feed;

  const FeedItem({
    super.key,
    required this.feed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeedItemHeader(
          username: feed.username,
          userhandle: feed.userhandle,
          time: feed.time,
        ).pad(x: 10),
        const SizedBox(height: 10),
        FeedItemBody(
          imageUrl: feed.imageUrl,
          content: feed.content,
        ).pad(x: 10),
        const SizedBox(height: 10),
        FeedItemActions(
          commentCount: feed.commentCount,
          shareCount: feed.shareCount,
          likeCount: feed.likeCount,
        ).pad(x: 10),
        Divider(),
      ],
    );
  }
}
