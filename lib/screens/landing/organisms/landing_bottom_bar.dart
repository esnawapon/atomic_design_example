import 'package:atomic_design_example/app/app_cubit.dart';
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
            NavigationDestination(
              selectedIcon: Badge.count(count: 2, child: Icon(Icons.people)),
              icon: Badge.count(count: 2, child: Icon(Icons.people_outline)),
              label: 'Friends',
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
