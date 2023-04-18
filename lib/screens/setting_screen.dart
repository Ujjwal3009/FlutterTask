import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final String title;

  final List<Widget> children;

  const SettingsScreen({
    super.key,
    required this.children,
    this.title = 'Settings',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        centerTitle: true,
        title: Text(title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            )),
        actions: const [
          Icon(
            Icons.close,
            size: 50.0,
          )
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: children.length,
        itemBuilder: (BuildContext context, int index) {
          return children[index];
        },
      ),
    );
  }
}
