import 'package:atomic_design_example/screens/account/atoms/leading_icon_atom.dart';
import 'package:flutter/material.dart';

class AccountMenuList extends StatelessWidget {
  const AccountMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: LeadingIconAtom(Icons.person),
          title: Text('Item 1'),
          onTap: () {},
        ),
        ListTile(
          leading: LeadingIconAtom(Icons.history),
          title: Text('Item 2'),
          onTap: () {},
        ),
        ListTile(
          leading: LeadingIconAtom(Icons.photo_album),
          title: Text('Item 3'),
          onTap: () {},
        ),
        ListTile(
          leading: LeadingIconAtom(Icons.settings),
          title: Text('Item 4'),
          onTap: () {},
        ),
        ListTile(
          leading: LeadingIconAtom(Icons.translate),
          title: Text('Item 5'),
          onTap: () {},
        ),
        ListTile(
          leading: LeadingIconAtom(Icons.notifications),
          title: Text('Item 6'),
          onTap: () {},
        ),
        ListTile(
          leading: LeadingIconAtom(Icons.calendar_month),
          title: Text('Item 7'),
          onTap: () {},
        ),
        ListTile(
          leading: LeadingIconAtom(Icons.data_object),
          title: Text('Item 8'),
          onTap: () {},
        ),
        ListTile(
          leading: LeadingIconAtom(Icons.logout),
          title: Text('Item 9'),
          onTap: () {},
        ),
      ],
    );
  }
}
