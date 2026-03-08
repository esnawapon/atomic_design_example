import 'package:atomic_design_example/app/app_cubit.dart';
import 'package:atomic_design_example/helpers/context_theme_ext.dart';
import 'package:atomic_design_example/models/quick_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingSideMenu extends StatelessWidget {
  const LandingSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        listTileTheme: context.theme.listTileTheme.copyWith(
          iconColor: context.colorTheme.primary,
          titleTextStyle: context.textTheme.titleMedium,
        ),
      ),
      child: Scaffold(
        backgroundColor: context.colorTheme.secondaryContainer,
        body: BlocSelector<AppCubit, AppState, List<QuickMenu>>(
          selector: (state) => state.quickMenus,
          builder: (context, quickMenus) {
            return ListView.builder(
              itemCount: quickMenus.length,
              itemBuilder: (context, i) => ListTile(
                onTap: () {},
                leading: Icon(
                  IconData(
                    quickMenus[i].icon,
                    fontFamily: 'MaterialIcons',
                  ),
                ),
                title: Text(quickMenus[i].label),
              ),
            );
          },
        ),
      ),
    );
  }
}
