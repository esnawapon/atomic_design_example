import 'package:atomic_design_example/helpers/context_screen_ext.dart';
import 'package:atomic_design_example/screens/home/home_cubit.dart';
import 'package:atomic_design_example/screens/home/organisms/home_feed.dart';
import 'package:atomic_design_example/screens/home/organisms/home_top_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..init(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              if (!context.isBigScreen) ...[
                const HomeTopMenu(),
              ],
              const SizedBox(height: 10),
              const HomeFeed(),
            ],
          ),
        ),
      ),
    );
  }
}
