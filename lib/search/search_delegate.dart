import 'package:app_cats_flutter/src/models/models.dart';
import 'package:app_cats_flutter/src/models/search_breeds_response.dart';

import 'package:app_cats_flutter/src/providers/cats_providers.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatsSearchDelegate extends SearchDelegate {
  final List<NowResponseCatsModel> cats;

  CatsSearchDelegate(this.cats);
  @override
  String get searchFieldLabel => 'Buscar Razas de Gatos';
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return _emptyContainer();
    return Text('buildResults');
  }

  Widget _emptyContainer() {
    return Container(
      child: Center(
        child: Icon(
          Icons.pets,
          color: Colors.black38,
          size: 130,
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return _emptyContainer();
    }

    final catsProvider = Provider.of<CatsProvider>(context, listen: false);
    catsProvider.getCatsByName(query);
    return FutureBuilder(
      future: catsProvider.getCatsByName(query),
      builder: (_, AsyncSnapshot<List<SearchResponse>> snapshot) {
        if (!snapshot.hasData) return _emptyContainer();

        final cats = snapshot.data!;
        print(cats);
        return ListView.builder(
          itemCount: cats.length,
          itemBuilder: (_, int index) => _CatItem(cats[index]),
        );
      },
    );
  }
}

class _CatItem extends StatelessWidget {
  final SearchResponse cats;

  const _CatItem(
    this.cats,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        cats.id.toString(),
      ),
      onTap: () {
        Navigator.pushNamed(context, 'detailsScroll', arguments: cats);
      },
    );
  }
}
