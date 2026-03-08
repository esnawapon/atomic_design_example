import 'package:atomic_design_example/app/app_cubit.dart';
import 'package:atomic_design_example/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingBottomBar extends StatelessWidget {
  const LandingBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return BlocSelector<AppCubit, AppState, int>(
      selector: (state) => state.tabIndex,
      builder: (context, tabIndex) {
        return NavigationBar(
          selectedIndex: tabIndex,
          onDestinationSelected: cubit.changeTab,
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BlocSelector<AppCubit, AppState, int>(
              selector: (state) => state.unreadNotiCount,
              builder: (context, unreadNotiCount) {
                return NavigationDestination(
                  selectedIcon: Badge.count(
                    isLabelVisible: unreadNotiCount > 0,
                    count: unreadNotiCount,
                    child: Icon(Icons.notifications),
                  ),
                  icon: Badge.count(
                    isLabelVisible: unreadNotiCount > 0,
                    count: unreadNotiCount,
                    child: Icon(Icons.notifications_outlined),
                  ),
                  label: 'Notification',
                );
              },
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.person_outline),
              label: 'Account',
            ),
          ],
        );
      },
    );
  }
}
