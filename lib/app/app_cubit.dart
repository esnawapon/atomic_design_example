import 'package:atomic_design_example/models/quick_menu.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum AppStatus {
  init,
  loading,
  ready,
}

class AppState extends Equatable {
  final AppStatus status;
  final List<QuickMenu> quickMenus;
  final int tabIndex;

  const AppState({
    this.status = AppStatus.init,
    this.quickMenus = const [],
    this.tabIndex = 0,
  });

  @override
  List<Object?> get props => [
    status,
    quickMenus,
    tabIndex,
  ];

  AppState copyWith({
    AppStatus? status,
    List<QuickMenu>? quickMenus,
    int? tabIndex,
  }) {
    return AppState(
      status: status ?? this.status,
      quickMenus: quickMenus ?? this.quickMenus,
      tabIndex: tabIndex ?? this.tabIndex,
    );
  }
}

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState());

  Future<void> init() async {
    emit(state.copyWith(status: .loading));

    // api all
    await Future.delayed(const Duration(milliseconds: 500));
    emit(
      state.copyWith(
        status: .ready,
        quickMenus: [
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
            icon: 58019,
            label: 'Folder',
            url: '/folder',
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
        ],
      ),
    );
  }

  void changeTab(int tabIndex) {
    emit(state.copyWith(tabIndex: tabIndex));
  }
}
