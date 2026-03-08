import 'package:atomic_design_example/app/app_cubit.dart';
import 'package:atomic_design_example/screens/home/home_cubit.dart';
import 'package:atomic_design_example/screens/home/home_state.dart';
import 'package:atomic_design_example/screens/home/molecules/feed_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({super.key});

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  late final cubit = context.read<HomeCubit>();
  late final appCubit = context.read<AppCubit>();
  final refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Expanded(
          child: RefreshIndicator(
            key: refreshKey,
            notificationPredicate: (_) => state.status != .loading,
            onRefresh: () => Future.wait([
              cubit.init(),
              appCubit.fetchNotifications(),
            ]),
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, i) {
                      return FeedTile(feed: state.feeds[i]);
                    },
                    childCount: state.feeds.length,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
