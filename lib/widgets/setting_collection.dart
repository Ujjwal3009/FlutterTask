import 'package:flutter/material.dart';

class SettingsCollection extends StatelessWidget {
  final String title;
  final TextStyle? titleTextStyle;
  final List<Widget> children;
  final Alignment titleAlignment;

  const SettingsCollection({
    super.key,
    required this.title,
    required this.children,
    this.titleTextStyle,
    this.titleAlignment = Alignment.centerLeft,
  });

  @override
  Widget build(BuildContext context) {
    var elements = <Widget>[
      Container(
        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 22.0),
        child: Align(
          alignment: titleAlignment,
          child: Text(
            title.toUpperCase(),
            style: titleTextStyle,
          ),
        ),
      ),
    ];
    elements.addAll(children);
    return Wrap(
      children: <Widget>[
        Column(
          children: elements,
        )
      ],
    );
  }
}
