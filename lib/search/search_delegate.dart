import 'package:app_cats_flutter/src/providers/cats_providers.dart';
import 'package:app_cats_flutter/src/providers/cats_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatsSearchDelegate extends SearchDelegate {
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
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Container(
        child: Center(
          child: Icon(Icons.pets, color: Colors.black38, size: 130),
        ),
      );
    }

    final catsProvider = Provider.of<CatsProvider>(context, listen: false);
    FutureBuilder(
      future: catsProvider.getCatsByName(query),
      builder: (_, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
     
     
       }
        return Container(); },
    );
  }
}
