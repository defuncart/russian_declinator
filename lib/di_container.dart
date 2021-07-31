import 'package:flutter/widgets.dart' show Locale;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:russian_declinator/services/settings_database/i_settings_database.dart';
import 'package:russian_declinator/services/settings_database/settings_database.dart';

abstract class DIContainer {
  static late Reader _read;

  static void initialize(Reader read) => _read = read;

  static ISettingsDatabase get settingsDatabase => _read(_settingsProvider);
}

final _settingsProvider = Provider<ISettingsDatabase>(
  (_) => SettingsDatabase(),
);

final isDarkModeProvider = StateProvider((ref) => DIContainer.settingsDatabase.isDarkMode);

final languageProvider = StateProvider((ref) => Locale(DIContainer.settingsDatabase.language));
