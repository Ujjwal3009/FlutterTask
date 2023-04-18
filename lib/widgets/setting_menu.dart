import 'package:flutter/material.dart';
import 'package:vms/widgets/setting_menu_divider.dart';

class SettingsMenu extends StatefulWidget {
  final String title;

  final Widget? leading;

  final TextStyle? titleTextStyle;

  final bool enabled;

  final GestureTapCallback? onTap;

  final bool showDivider;

  final Widget child;

  const SettingsMenu({
    super.key,
    required this.title,
    this.titleTextStyle,
    this.onTap,
    this.enabled = true,
    required this.child,
    this.leading,
    this.showDivider = true,
  });

  @override
  State<SettingsMenu> createState() => __SettingsTileState();
}

class __SettingsTileState extends State<SettingsMenu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ListTile(
            leading: widget.leading,
            title: Text(
              widget.title,
              style: widget.titleTextStyle,
            ),
            enabled: widget.enabled,
            trailing: widget.child,
            onTap: () {
              debugPrint("${widget.title} clicked");
            },
            dense: true,
          ),
          if (widget.showDivider) const SettingsMenuDivider(),
        ],
      ),
    );
  }
}
