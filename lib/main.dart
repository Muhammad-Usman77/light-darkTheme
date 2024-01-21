import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thememode/provider/theme_chnage_provider.dart';
import 'package:thememode/screen/theme_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChnager(),
      child:Builder(builder: (BuildContext context){
        final themeChanger = Provider.of<ThemeChnager>(context);
        return  MaterialApp(
          title: 'Flutter Demo',
          themeMode:themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark
          ),
          home: DarkThemeScreen(),
        );
      }),
    );
  }
}
