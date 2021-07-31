import 'package:flutter/widgets.dart' show Locale;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:russian_declinator/services/databases/create_database.dart';
import 'package:russian_declinator/services/databases/database.dart';
import 'package:russian_declinator/services/settings_database/i_settings_database.dart';
import 'package:russian_declinator/services/settings_database/settings_database.dart';

export 'package:russian_declinator/services/databases/database.dart';
export 'package:russian_declinator/services/settings_database/i_settings_database.dart';

abstract class DIContainer {
  static late Reader _read;

  static void initialize(Reader read) => _read = read;

  static ISettingsDatabase get settingsDatabase => _read(_settingsProvider);

  static Database get db => _read(_dbProvider);
}

final _settingsProvider = Provider<ISettingsDatabase>(
  (_) => SettingsDatabase(),
);

final _dbProvider = Provider<Database>(
  (_) => createDatabase(),
);

final isDarkModeProvider = StateProvider((ref) => DIContainer.settingsDatabase.isDarkMode);

final languageProvider = StateProvider((ref) => Locale(DIContainer.settingsDatabase.language));
