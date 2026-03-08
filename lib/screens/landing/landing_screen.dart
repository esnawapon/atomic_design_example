import 'package:atomic_design_example/app/app_cubit.dart';
import 'package:atomic_design_example/screens/account/account_screen.dart';
import 'package:atomic_design_example/screens/home/home_screen.dart';
import 'package:atomic_design_example/screens/landing/organisms/landing_bottom_bar.dart';
import 'package:atomic_design_example/screens/landing/organisms/landing_side_menu.dart';
import 'package:atomic_design_example/screens/landing/templates/big_screen_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BigScreenTemplate(
      sideMenu: const LandingSideMenu(),
      body: Scaffold(
        body: BlocSelector<AppCubit, AppState, int>(
          selector: (state) => state.tabIndex,
          builder: (context, tabIndex) {
            return switch (tabIndex) {
              0 => HomeScreen(),
              1 => SizedBox.shrink(),
              2 => AccountScreen(),
              _ => SizedBox.shrink(),
            };
          },
        ),
        bottomNavigationBar: const LandingBottomBar(),
      ),
    );
  }
}
