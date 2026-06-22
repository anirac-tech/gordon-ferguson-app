import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/features/settings/wpa_settings_list.dart';
import 'package:gordon_ferguson_app/app/shared/wpa_app_bar.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  // Route information
  static const path = '/settings';
  static const name = 'settings';

  @override
  Widget build(BuildContext context) => const Scaffold(
    appBar: WpaAppBar(title: Text('Settings'), surfaceTintColor: Colors.transparent),
    body: Center(child: WpaSettingsList()),
  );
}
