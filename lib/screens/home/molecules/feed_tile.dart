import 'package:atomic_design_example/helpers/widget_padding_ext.dart';
import 'package:atomic_design_example/models/feed.dart';
import 'package:atomic_design_example/screens/home/molecules/feed_tile_actions.dart';
import 'package:atomic_design_example/screens/home/molecules/feed_tile_body.dart';
import 'package:atomic_design_example/screens/home/molecules/feed_tile_header.dart';
import 'package:flutter/material.dart';

class FeedTile extends StatelessWidget {
  final Feed feed;

  const FeedTile({
    super.key,
    required this.feed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeedTileHeader(
          username: feed.username,
          userhandle: feed.userhandle,
          time: feed.time,
        ).pad(x: 10),
        const SizedBox(height: 10),
        FeedTileBody(
          imageUrl: feed.imageUrl,
          content: feed.content,
        ).pad(x: 10),
        const SizedBox(height: 10),
        FeedTileActions(
          commentCount: feed.commentCount,
          shareCount: feed.shareCount,
          likeCount: feed.likeCount,
        ).pad(x: 10),
        Divider(),
      ],
    );
  }
}
