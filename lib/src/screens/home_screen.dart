import 'package:app_cats_flutter/src/providers/cats_providers.dart';
import 'package:app_cats_flutter/src/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final catsProvider = Provider.of<CatsProvider>(context);
    print('desde Provider ${catsProvider.onDisplayCats}');
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Catbreeds'),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () {},
            )
          ],
        ),
        body:   Prueba(catsProvider.onDisplayCats), 
        );
  }
}
