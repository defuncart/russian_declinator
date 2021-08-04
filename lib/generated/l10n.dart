// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes
// ignore_for_file: always_use_package_imports

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Russian Declinator`
  String get appName {
    return Intl.message(
      'Russian Declinator',
      name: 'appName',
      desc: 'Name of the app',
      args: [],
    );
  }

  /// `Nominative`
  String get generalNominative {
    return Intl.message(
      'Nominative',
      name: 'generalNominative',
      desc: 'Nominative case',
      args: [],
    );
  }

  /// `Genitive`
  String get generalGenitive {
    return Intl.message(
      'Genitive',
      name: 'generalGenitive',
      desc: 'Genitive case',
      args: [],
    );
  }

  /// `Dative`
  String get generalDative {
    return Intl.message(
      'Dative',
      name: 'generalDative',
      desc: 'Dative case',
      args: [],
    );
  }

  /// `Accusative`
  String get generalAccusative {
    return Intl.message(
      'Accusative',
      name: 'generalAccusative',
      desc: 'Accusative case',
      args: [],
    );
  }

  /// `Instrumental`
  String get generalInstrumental {
    return Intl.message(
      'Instrumental',
      name: 'generalInstrumental',
      desc: 'Instrumental case',
      args: [],
    );
  }

  /// `Prepositional`
  String get generalPrepositional {
    return Intl.message(
      'Prepositional',
      name: 'generalPrepositional',
      desc: 'Prepositional case',
      args: [],
    );
  }

  /// `Nom`
  String get generalNominativeShort {
    return Intl.message(
      'Nom',
      name: 'generalNominativeShort',
      desc: 'Nominative case short',
      args: [],
    );
  }

  /// `Gen`
  String get generalGenitiveShort {
    return Intl.message(
      'Gen',
      name: 'generalGenitiveShort',
      desc: 'Genitive case short',
      args: [],
    );
  }

  /// `Dat`
  String get generalDativeShort {
    return Intl.message(
      'Dat',
      name: 'generalDativeShort',
      desc: 'Dative case short',
      args: [],
    );
  }

  /// `Acc`
  String get generalAccusativeShort {
    return Intl.message(
      'Acc',
      name: 'generalAccusativeShort',
      desc: 'Accusative case short',
      args: [],
    );
  }

  /// `Inst`
  String get generalInstrumentalShort {
    return Intl.message(
      'Inst',
      name: 'generalInstrumentalShort',
      desc: 'Instrumental case short',
      args: [],
    );
  }

  /// `Prep`
  String get generalPrepositionalShort {
    return Intl.message(
      'Prep',
      name: 'generalPrepositionalShort',
      desc: 'Prepositional case short',
      args: [],
    );
  }

  /// `Singular`
  String get generalSingular {
    return Intl.message(
      'Singular',
      name: 'generalSingular',
      desc: 'Singular',
      args: [],
    );
  }

  /// `Plural`
  String get generalPlural {
    return Intl.message(
      'Plural',
      name: 'generalPlural',
      desc: 'Plural',
      args: [],
    );
  }

  /// `Masculine`
  String get generalMasculine {
    return Intl.message(
      'Masculine',
      name: 'generalMasculine',
      desc: 'Masculine',
      args: [],
    );
  }

  /// `Feminine`
  String get generalFeminine {
    return Intl.message(
      'Feminine',
      name: 'generalFeminine',
      desc: 'Feminine',
      args: [],
    );
  }

  /// `Neuter`
  String get generalNeuter {
    return Intl.message(
      'Neuter',
      name: 'generalNeuter',
      desc: 'Neuter',
      args: [],
    );
  }

  /// `Animate`
  String get generalAnimate {
    return Intl.message(
      'Animate',
      name: 'generalAnimate',
      desc: 'When a noun is animate',
      args: [],
    );
  }

  /// `Not Animate`
  String get generalNotAnimate {
    return Intl.message(
      'Not Animate',
      name: 'generalNotAnimate',
      desc: 'When a noun is not animate',
      args: [],
    );
  }

  /// `Search`
  String get searchWordsHintText {
    return Intl.message(
      'Search',
      name: 'searchWordsHintText',
      desc: 'A hint text to display when searching for words',
      args: [],
    );
  }

  /// `Home`
  String get homeScreenBottomBarHomeLabel {
    return Intl.message(
      'Home',
      name: 'homeScreenBottomBarHomeLabel',
      desc: 'A label for the home bottom nav item',
      args: [],
    );
  }

  /// `Settings`
  String get homeScreenBottomBarSettingsLabel {
    return Intl.message(
      'Settings',
      name: 'homeScreenBottomBarSettingsLabel',
      desc: 'A label for the settings bottom nav item',
      args: [],
    );
  }

  /// `Dark Mode`
  String get settingsTabDarkModeLabel {
    return Intl.message(
      'Dark Mode',
      name: 'settingsTabDarkModeLabel',
      desc: 'A label for dark mode setting',
      args: [],
    );
  }

  /// `Language`
  String get settingsTabLanguageLabel {
    return Intl.message(
      'Language',
      name: 'settingsTabLanguageLabel',
      desc: 'A label for language setting',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'de'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
