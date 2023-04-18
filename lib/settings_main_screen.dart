import 'package:flutter/material.dart';
import 'package:vms/screens/setting_screen.dart';
import 'package:vms/widgets/custom_switch.dart';
import 'package:vms/widgets/setting_collection.dart';
import 'package:vms/widgets/setting_menu.dart';

class MainSettingScreen extends StatelessWidget {
  const MainSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsScreen(children: <Widget>[
      SettingsCollection(
          title: "Preference",
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.blue),
          children: [
            SettingsMenu(
              title: "Language",
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              enabled: true,
              showDivider: true,
              child: Wrap(
                spacing: 5,
                children: const <Widget>[
                  Text(
                    "English",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 20.0),
                ],
              ),
            ),
            SettingsMenu(
              title: "Push Notification",
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              enabled: true,
              showDivider: true,
              child: Wrap(
                spacing: 5,
                children: <Widget>[
                  CustomSwitch(
                    value: true,
                    enableColor: Colors.white,
                    disableColor: Colors.white,
                  )
                ],
              ),
            ),
            SettingsMenu(
              title: "Theme",
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              enabled: true,
              showDivider: true,
              child: Wrap(
                spacing: 5,
                children: const <Widget>[
                  Text("Dark"),
                  Icon(Icons.arrow_forward_ios, size: 20.0),
                ],
              ),
            ),
          ]),
      const SizedBox(
        height: 50,
      ),
      SettingsCollection(
          title: "Privacy",
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.blue),
          children: <Widget>[
            SettingsMenu(
              title: "About Us",
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              enabled: true,
              showDivider: true,
              child: Wrap(
                spacing: 5,
                children: const <Widget>[
                  Text(""),
                  Icon(Icons.arrow_forward_ios, size: 20.0),
                ],
              ),
            ),
            SettingsMenu(
              title: "Contact Us",
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              enabled: true,
              showDivider: true,
              child: Wrap(
                spacing: 5,
                children: const <Widget>[
                  Text(""),
                  Icon(Icons.arrow_forward_ios, size: 20.0),
                ],
              ),
            ),
            SettingsMenu(
              title: "Privacy Policy",
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              enabled: true,
              showDivider: true,
              child: Wrap(
                spacing: 5,
                children: const <Widget>[
                  Text(""),
                  Icon(Icons.arrow_forward_ios, size: 20.0),
                ],
              ),
            ),
            SettingsMenu(
              title: "FAQ",
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              enabled: true,
              showDivider: true,
              child: Wrap(
                spacing: 5,
                children: const <Widget>[
                  Text(""),
                  Icon(Icons.arrow_forward_ios, size: 20.0),
                ],
              ),
            ),
            SettingsMenu(
              title: "Terms & Conditions",
              titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
              enabled: true,
              showDivider: true,
              child: Wrap(
                spacing: 5,
                children: const <Widget>[
                  Text(""),
                  Icon(Icons.arrow_forward_ios, size: 20.0),
                  //// icon-2
                ],
              ),
            ),
          ]),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: const <Widget>[
              Text("App Version 1.0.2"),
              Text("Copyright EPAM INDIA")
            ],
          ),
        ),
      )
    ]);
  }
}
