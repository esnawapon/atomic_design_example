import 'package:equatable/equatable.dart';

class QuickMenu extends Equatable {
  final int icon;
  final String label;
  final String url;

  const QuickMenu({
    required this.icon,
    required this.label,
    required this.url,
  });

  @override
  List<Object?> get props => [
    icon,
    label,
    url,
  ];
}
