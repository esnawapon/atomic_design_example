import 'package:atomic_design_example/models/feed.dart';
import 'package:equatable/equatable.dart';

enum HomeStatus {
  init,
  loading,
  ready,
}

class HomeState extends Equatable {
  final HomeStatus status;
  final List<Feed> feeds;

  const HomeState({
    this.status = HomeStatus.init,
    this.feeds = const [],
  });

  @override
  List<Object?> get props => [
    status,
    feeds,
  ];

  HomeState copyWith({
    HomeStatus? status,
    List<Feed>? feeds,
  }) {
    return HomeState(
      status: status ?? this.status,
      feeds: feeds ?? this.feeds,
    );
  }
}
