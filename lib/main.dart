
import 'package:app_cats_flutter/src/screens/screens.dart';
import 'package:app_cats_flutter/src/themes/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
       title: 'AppCats',
       theme: miTheme,
      initialRoute: 'home',
      routes:  {
         'home':(_)=> HomeScreen(),
         'details':(_)=> DetailScreen()
      },
          );
  }
}