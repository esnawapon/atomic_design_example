import 'package:atomic_design_example/models/app_notification.dart';
import 'package:atomic_design_example/models/quick_menu.dart';
import 'package:equatable/equatable.dart';

enum AppStatus {
  init,
  loading,
  ready,
}

class AppState extends Equatable {
  final AppStatus status;
  final List<QuickMenu> quickMenus;
  final List<AppNotification> notifications;
  final int tabIndex;

  int get unreadNotiCount => notifications.where((e) => !e.isRead).length;

  const AppState({
    this.status = AppStatus.init,
    this.quickMenus = const [],
    this.notifications = const [],
    this.tabIndex = 0,
  });

  @override
  List<Object?> get props => [
    status,
    quickMenus,
    notifications,
    tabIndex,
  ];

  AppState copyWith({
    AppStatus? status,
    List<QuickMenu>? quickMenus,
    List<AppNotification>? notifications,
    int? tabIndex,
  }) {
    return AppState(
      status: status ?? this.status,
      quickMenus: quickMenus ?? this.quickMenus,
      notifications: notifications ?? this.notifications,
      tabIndex: tabIndex ?? this.tabIndex,
    );
  }
}
