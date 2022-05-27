
import 'package:app_cats_flutter/src/screens/home_screen.dart';
import 'package:app_cats_flutter/src/themes/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
       title: 'Material App',
       theme: miTheme,
      home: const HomeScreen()
    );
  }
}