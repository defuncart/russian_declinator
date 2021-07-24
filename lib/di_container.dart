import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:russian_declinator/services/settings_database/i_settings_database.dart';
import 'package:russian_declinator/services/settings_database/settings_database.dart';

abstract class DIContainer {
  static late WidgetRef _ref;

  static void initialize(WidgetRef ref) => _ref = ref;

  static ISettingsDatabase get settingsDatabase => _ref.read(_settingsProvider);
}

final _settingsProvider = Provider<ISettingsDatabase>(
  (_) => SettingsDatabase(),
);
