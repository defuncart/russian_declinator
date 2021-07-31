import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:russian_declinator/di_container.dart';
import 'package:russian_declinator/generated/l10n.dart';

const _languages = {
  'en': 'English',
  'de': 'Deutsch',
  'ru': 'Русский',
};

class LanguageTab extends StatelessWidget {
  const LanguageTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(AppLocalizations.of(context).settingsTabLanguageLabel),
        const SizedBox(height: 8.0),
        Consumer(
          builder: (_, ref, __) {
            final language = ref.watch(languageProvider).state.languageCode;

            return RadioButtonGroup(
              labels: _languages.values.toList(),
              onChange: (_, selectedIndex) {
                final selectedLanguage = _languages.keys.toList()[selectedIndex];
                ref.read(languageProvider).state = Locale(selectedLanguage);
                DIContainer.settingsDatabase.language = selectedLanguage;
              },
              picked: _languages[language],
            );
          },
        ),
      ],
    );
  }
}
