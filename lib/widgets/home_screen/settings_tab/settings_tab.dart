import 'package:flutter/material.dart';
import 'package:russian_declinator/widgets/home_screen/settings_tab/dark_mode_panel.dart';
import 'package:russian_declinator/widgets/home_screen/settings_tab/language_tab.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const [
          DarkModePanel(),
          SizedBox(height: 16),
          LanguageTab(),
        ],
      ),
    );
  }
}
