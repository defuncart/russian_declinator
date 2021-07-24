import 'package:flutter/material.dart';
import 'package:russian_declinator/generated/l10n.dart';
import 'package:russian_declinator/widgets/home_screen/home_tab.dart';
import 'package:russian_declinator/widgets/home_screen/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).appName),
      ),
      body: _index == 0 ? const HomeTab() : const SettingsTab(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => _index = index),
        currentIndex: _index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: AppLocalizations.of(context).homeScreenBottomBarHomeLabel,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: AppLocalizations.of(context).homeScreenBottomBarSettingsLabel,
          ),
        ],
      ),
    );
  }
}
