import 'package:atomic_design_example/app/app_state.dart';
import 'package:atomic_design_example/models/app_notification.dart';
import 'package:atomic_design_example/models/quick_menu.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState());

  Future<void> init() async {
    emit(state.copyWith(status: .loading));

    // api all
    await Future.delayed(const Duration(milliseconds: 500));
    emit(
      state.copyWith(
        status: .ready,
        quickMenus: _dummyQuickMenus,
        notifications: _dummyNotifications,
      ),
    );
  }

  Future<void> fetchNotifications() async {
    // api all
    await Future.delayed(const Duration(milliseconds: 500));
    emit(
      state.copyWith(notifications: _dummyNotifications),
    );
  }

  void changeTab(int tabIndex) {
    emit(state.copyWith(tabIndex: tabIndex));
  }

  void readNotification(String id) {
    emit(
      state.copyWith(
        notifications: [
          for (final e in state.notifications)
            if (e.id == id)
              e.copyWith(isRead: true) //
            else
              e,
        ],
      ),
    );
  }
}

final _dummyQuickMenus = [
  QuickMenu(
    icon: 58727,
    label: 'Search',
    url: '/search',
  ),
  QuickMenu(
    icon: 57918,
    label: 'Event',
    url: '/event',
  ),
  QuickMenu(
    icon: 0xe486,
    label: 'Friends',
    url: '/friends',
  ),
  QuickMenu(
    icon: 57947,
    label: 'Favorite',
    url: '/favorite',
  ),
  QuickMenu(
    icon: 0xf07d4,
    label: 'Wallet',
    url: '/wallet',
  ),
];

final _dummyNotifications = [
  AppNotification(
    id: "01",
    title: "New follower",
    message: "Alice Tan started following you.",
    imageUrl: "https://picsum.photos/seed/follow/200/200",
    isRead: false,
    dateTime: DateTime.now().subtract(const Duration(minutes: 5)),
  ),
  AppNotification(
    id: "02",
    title: "Post liked",
    message: "Kenji Watanabe liked your post.",
    imageUrl: "",
    isRead: false,
    dateTime: DateTime.now().subtract(const Duration(minutes: 20)),
  ),
  AppNotification(
    id: "03",
    title: "New comment",
    message: "Sofia commented on your post: \"Nice work!\"",
    imageUrl: "https://picsum.photos/seed/comment/200/200",
    isRead: false,
    dateTime: DateTime.now().subtract(const Duration(hours: 1)),
  ),
  AppNotification(
    id: "04",
    title: "Mentioned you",
    message: "David mentioned you in a comment.",
    imageUrl: "",
    isRead: true,
    dateTime: DateTime.now().subtract(const Duration(hours: 3)),
  ),
  AppNotification(
    id: "05",
    title: "New like",
    message: "Emma Johnson liked your photo.",
    imageUrl: "https://picsum.photos/seed/like/200/200",
    isRead: true,
    dateTime: DateTime.now().subtract(const Duration(hours: 6)),
  ),
  AppNotification(
    id: "06",
    title: "Post shared",
    message: "Carlos Mendes shared your post.",
    imageUrl: "",
    isRead: true,
    dateTime: DateTime.now().subtract(const Duration(hours: 9)),
  ),
  AppNotification(
    id: "07",
    title: "Friend suggestion",
    message: "You might know Arjun Patel.",
    imageUrl: "https://picsum.photos/seed/friend/200/200",
    isRead: false,
    dateTime: DateTime.now().subtract(const Duration(days: 1)),
  ),
  AppNotification(
    id: "08",
    title: "Weekly summary",
    message: "Your posts received 120 likes this week.",
    imageUrl: "",
    isRead: true,
    dateTime: DateTime.now().subtract(const Duration(days: 2)),
  ),
  AppNotification(
    id: "09",
    title: "New message",
    message: "Mika Sato sent you a message.",
    imageUrl: "https://picsum.photos/seed/message/200/200",
    isRead: false,
    dateTime: DateTime.now().subtract(const Duration(days: 3)),
  ),
  AppNotification(
    id: "10",
    title: "Update available",
    message: "A new app update is ready to install.",
    imageUrl: "",
    isRead: true,
    dateTime: DateTime.now().subtract(const Duration(days: 5)),
  ),
];
