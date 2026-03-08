import 'package:atomic_design_example/app/app_cubit.dart';
import 'package:atomic_design_example/app/app_state.dart';
import 'package:atomic_design_example/models/app_notification.dart';
import 'package:atomic_design_example/screens/notification/molecules/notification_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late final appCubit = context.read<AppCubit>();
  final refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: appCubit.fetchNotifications,
        child: BlocSelector<AppCubit, AppState, List<AppNotification>>(
          selector: (state) => state.notifications,
          builder: (context, notifications) {
            return ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, i) {
                return NotificationTile(
                  notification: notifications[i],
                  onTap: () => appCubit.readNotification(notifications[i].id),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
