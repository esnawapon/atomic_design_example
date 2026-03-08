import 'package:atomic_design_example/helpers/context_theme_ext.dart';
import 'package:atomic_design_example/models/app_notification.dart';
import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  final AppNotification notification;
  final void Function() onTap;

  const NotificationTile({
    super.key,
    required this.notification,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final diff = DateTime.now().difference(notification.dateTime);
    final String time;

    if (diff.inMinutes < 60) {
      time = "${diff.inMinutes}m";
    } else if (diff.inHours < 24) {
      time = "${diff.inHours}h";
    } else {
      time = "${diff.inDays}d";
    }

    return ColoredBox(
      color: notification.isRead ? context.colorTheme.surface : context.colorTheme.primaryContainer,
      child: ListTile(
        onTap: onTap,
        leading:
            notification
                .imageUrl
                .isEmpty //
            ? CircleAvatar(
                backgroundColor: context.colorTheme.secondaryContainer,
                child: Icon(
                  Icons.notifications,
                  color: context.colorTheme.onSecondaryContainer,
                ),
              )
            : CircleAvatar(
                backgroundImage: NetworkImage(notification.imageUrl),
                backgroundColor: context.colorTheme.secondaryContainer,
              ),

        title: Text(
          notification.title,
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: notification.isRead ? FontWeight.normal : FontWeight.bold,
            color: context.colorTheme.onSurface,
          ),
        ),
        subtitle: Text(
          notification.message,
          style: context.textTheme.bodySmall?.copyWith(
            color: context.colorTheme.onSurfaceVariant,
          ),
        ),
        trailing: Text(
          time,
          style: context.textTheme.labelSmall?.copyWith(
            color: context.colorTheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
