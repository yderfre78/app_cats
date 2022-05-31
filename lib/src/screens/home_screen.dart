import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:app_cats_flutter/src/providers/cats_providers.dart';
import 'package:app_cats_flutter/search/search_delegate.dart';
import 'package:app_cats_flutter/src/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final catsProvider = Provider.of<CatsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Catbreeds'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () =>
                showSearch(context: context, delegate: CatsSearchDelegate( catsProvider.onDisplayCats)),
          )
        ],
      ),
      body: CatsSlider(catsProvider.onDisplayCats),
    );
  }
}
