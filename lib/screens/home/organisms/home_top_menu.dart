import 'package:atomic_design_example/app/app_cubit.dart';
import 'package:atomic_design_example/app/app_state.dart';
import 'package:atomic_design_example/helpers/context_screen_ext.dart';
import 'package:atomic_design_example/helpers/widget_padding_ext.dart';
import 'package:atomic_design_example/models/quick_menu.dart';
import 'package:atomic_design_example/screens/home/atoms/top_menu_button_atom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _onScreenCount = 3;

class HomeTopMenu extends StatelessWidget {
  const HomeTopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppCubit, AppState, List<QuickMenu>>(
      selector: (state) => state.quickMenus,
      builder: (context, quickMenus) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 10),
              for (final e in quickMenus) //
                SizedBox(
                  width: (context.screenWidth / _onScreenCount) * 0.9,
                  child: TopMenuButtonAtom(quickMenu: e).pad(right: 10),
                ),
            ],
          ),
        );
      },
    );
  }
}
