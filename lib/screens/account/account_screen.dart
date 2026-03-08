import 'package:atomic_design_example/screens/account/organisms/account_menu_list.dart';
import 'package:atomic_design_example/screens/account/organisms/account_user_info.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 50),
          const AccountUserInfo(),
          const SizedBox(height: 10),
          const AccountMenuList(),
        ],
      ),
    );
  }
}
