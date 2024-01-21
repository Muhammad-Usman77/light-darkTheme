import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thememode/provider/theme_chnage_provider.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChnager>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ThemeChanger',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: Text('lightMode'),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('DarkMode'),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('SystemMode'),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme),
        ],
      ),
    );
  }
}
