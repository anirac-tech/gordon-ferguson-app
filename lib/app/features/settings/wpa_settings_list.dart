import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class WpaSettingsList extends StatelessWidget {
  const WpaSettingsList({super.key});

  @override
  Widget build(BuildContext context) => kIsWeb
      // coverage:ignore-start
      ? Column(
          children: [
            Card(
              margin: EdgeInsets.all(20.0),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text('Theme Mode'),
                    ),
                    Switch.adaptive(value: false, onChanged: (value) {})
                  ],
                ),
              ),
            ),
          ],
        )
      // coverage:ignore-end
      : SettingsList(
          sections: [
            SettingsSection(
              title: Text('General'),
              tiles: <SettingsTile>[
                SettingsTile.switchTile(
                  title: const Text('Theme Mode'),
                  initialValue: false,
                  onToggle: (value) {},
                )
              ],
            ),
          ],
        );
}
