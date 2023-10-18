import 'package:flutter/material.dart';
import 'package:whatsupp/settingpage.dart';
import 'package:whatsupp/splashscreen.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            color: Color(0xff075e55),
          ),
          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0))),
      routes: {
        '/': (context) => splashScreen(),
        'settingsPage': (context) => settingsPage()
      },
    );
  }
}
