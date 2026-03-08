import 'package:equatable/equatable.dart';

class AppNotification extends Equatable {
  final String id;
  final String title;
  final String message;
  final String imageUrl;
  final bool isRead;
  final DateTime dateTime;

  const AppNotification({
    required this.id,
    required this.title,
    required this.message,
    required this.imageUrl,
    required this.isRead,
    required this.dateTime,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    message,
    imageUrl,
    isRead,
    dateTime,
  ];

  AppNotification copyWith({
    String? id,
    String? title,
    String? message,
    String? imageUrl,
    bool? isRead,
    DateTime? dateTime,
  }) {
    return AppNotification(
      id: id ?? this.id,
      title: title ?? this.title,
      message: message ?? this.message,
      imageUrl: imageUrl ?? this.imageUrl,
      isRead: isRead ?? this.isRead,
      dateTime: dateTime ?? this.dateTime,
    );
  }
}
