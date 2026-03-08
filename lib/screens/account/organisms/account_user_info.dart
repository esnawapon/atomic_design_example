import 'package:flutter/material.dart';

class AccountUserInfo extends StatelessWidget {
  const AccountUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            radius: 75,
            child: Icon(
              Icons.person,
              size: 100,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Center(child: Text('John Atomic')),
        const SizedBox(height: 5),
        Center(child: Text('john.atomic@email.com')),
      ],
    );
  }
}
