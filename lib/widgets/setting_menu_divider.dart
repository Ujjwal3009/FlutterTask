import 'package:flutter/material.dart';

class SettingsMenuDivider extends StatelessWidget {
  const SettingsMenuDivider({super.key});
  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 5,
      thickness: 0.2,
      color: Colors.blue,
    );
  }
}
