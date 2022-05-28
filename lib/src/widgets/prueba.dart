import 'package:app_cats_flutter/src/models/models.dart';
import 'package:flutter/material.dart';

class Prueba extends StatelessWidget {
  final List<NowResponseCatsModel> cats;
  const Prueba(this.cats);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
    itemCount: this.cats.length,
    itemBuilder:(BuildContext context, int index){
      return ListTile(
        title: Text(cats[index].name),
      );
    }
    );
  }
}