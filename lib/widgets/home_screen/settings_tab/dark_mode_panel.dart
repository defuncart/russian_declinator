import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:russian_declinator/di_container.dart';
import 'package:russian_declinator/generated/l10n.dart';

class DarkModePanel extends StatelessWidget {
  const DarkModePanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(AppLocalizations.of(context).settingsTabDarkModeLabel),
        Consumer(
          builder: (_, ref, __) => Switch(
            value: ref.watch(isDarkModeProvider).state,
            onChanged: (value) {
              ref.read(isDarkModeProvider).state = value;
              DIContainer.settingsDatabase.isDarkMode = value;
            },
            inactiveThumbColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ],
    );
  }
}
