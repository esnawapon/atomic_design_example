import 'package:atomic_design_example/app/app_cubit.dart';
import 'package:atomic_design_example/app/app_theme.dart';
import 'package:atomic_design_example/screens/landing/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..init(),
      child: MaterialApp(
        theme: AppTheme.theme(),
        home: LandingScreen(),
      ),
    );
  }
}
