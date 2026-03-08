import 'package:equatable/equatable.dart';

class Feed extends Equatable {
  final String username;
  final String userhandle;
  final String imageUrl;
  final String content;
  final String time;

  final int commentCount;
  final int shareCount;
  final int likeCount;

  const Feed({
    required this.username,
    required this.userhandle,
    required this.imageUrl,
    required this.content,
    required this.time,
    required this.commentCount,
    required this.shareCount,
    required this.likeCount,
  });

  @override
  List<Object?> get props => [
    username,
    userhandle,
    imageUrl,
    content,
    time,
    commentCount,
    shareCount,
    likeCount,
  ];
}
