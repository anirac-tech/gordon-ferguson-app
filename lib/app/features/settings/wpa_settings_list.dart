import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gordon_ferguson_app/app/features/text_size/adjustable_text_widget.dart';
import 'package:gordon_ferguson_app/app/features/text_size/text_size_icon_button.dart';
import 'package:gordon_ferguson_app/app/features/theme_mode/theme_mode_switch.dart';
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
                      child: Text('Dark Mode'),
                    ),
                    ThemeModeSwitch(),
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: AdjustableTextWidget(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Text size'),
                      ),
                      TextSizeIconButton(isIncrease: false),
                      TextSizeIconButton(),
                    ],
                  ),
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
                SettingsTile(
                  title: Text('Dark Mode'),
                  trailing: Row(
                    children: [ThemeModeSwitch()],
                  ),
                ),
                SettingsTile(
                  title: AdjustableTextWidget(
                    child: Text('Text size'),
                  ),
                  trailing: Row(
                    children: [
                      TextSizeIconButton(isIncrease: false),
                      TextSizeIconButton(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
}
