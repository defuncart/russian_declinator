import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:russian_declinator/services/settings_database/i_settings_database.dart';

/// A database of the player's device settings
class SettingsDatabase implements ISettingsDatabase {
  /// A box to store objects
  late Box<dynamic> _box;

  /// A name for the box
  static const _boxName = 'settings';

  @override
  bool get isDarkMode => _box.get(_Keys.isDarkMode, defaultValue: _Defaults.isDarkMode);

  @override
  set isDarkMode(bool value) => _box.put(_Keys.isDarkMode, value);

  @override
  String get language => _box.get(_Keys.language, defaultValue: _Defaults.language);

  @override
  set language(String value) => _box.put(_Keys.language, value);

  @override
  Future<void> initialize() async {
    if (!kIsWeb) {
      // TODO use getApplicationSupportDirectory on iOS, investigate macOS
      final dir = await getApplicationDocumentsDirectory();
      Hive.init(dir.path);
    }

    _box = await Hive.openBox<dynamic>(_boxName);
  }

  @override
  Future<void> reset() => _box.deleteAll(_box.keys);
}

/// A class of keys used to store values
class _Keys {
  static const isDarkMode = 'isDarkMode';
  static const language = 'language';
}

/// A class of defaults for each key
class _Defaults {
  static const isDarkMode = false;
  static const language = 'en';
}
