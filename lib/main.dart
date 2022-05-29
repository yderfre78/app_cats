import 'package:app_cats_flutter/src/screens/screens.dart';
import 'package:app_cats_flutter/src/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:app_cats_flutter/src/providers/cats_providers.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CatsProvider(), lazy: false,
        ),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final catsProvider = Provider.of<CatsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppCats',
      theme: miTheme,
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'details': (_) => DetailScreen(),
        'detailsScroll': (_) => DetailScreenScroll()
      },
    );
  }
}
