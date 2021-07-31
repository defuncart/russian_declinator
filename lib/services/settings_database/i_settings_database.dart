/// A database of the user's device settings
abstract class ISettingsDatabase {
  /// Returns whether dark mode is enabled
  bool get isDarkMode;

  /// Sets whether dark mode is enabled
  set isDarkMode(bool value);

  /// Returns the selected language
  String get language;

  /// Sets the selected language
  set language(String value);

  /// Initializes the database
  Future<void> initialize();

  /// Resets the database
  Future<void> reset();
}
