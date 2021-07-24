import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:russian_declinator/configs/app_themes.dart';
import 'package:russian_declinator/generated/l10n.dart';
import 'package:russian_declinator/services/settings_database/i_settings_database.dart';
import 'package:russian_declinator/services/settings_database/settings_database.dart';
import 'package:russian_declinator/widgets/home_screen/home_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<bool> _initAppFuture;

  @override
  void initState() {
    super.initState();

    _initAppFuture = _initApp();
  }

  Future<bool> _initApp() async {
    final ISettingsDatabase settingsDatabase = SettingsDatabase();
    await settingsDatabase.initialize();

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FutureBuilder(
        future: _initAppFuture,
        // ignore: avoid_types_on_closure_parameters
        builder: (_, AsyncSnapshot<bool> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(
                child: CircularProgressIndicator(
                  color: AppThemes.light.accentColor,
                ),
              );
            default:
              if (snapshot.connectionState == ConnectionState.done && snapshot.hasData && snapshot.data == true) {
                return const _MyApp();
              }
            //TODO else show error
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class _MyApp extends StatelessWidget {
  const _MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.delegate.supportedLocales,
      home: const HomeScreen(),
    );
  }
}
