import 'package:app_cats_flutter/src/models/models.dart';
import 'package:app_cats_flutter/src/providers/cats_providers.dart';
import 'package:app_cats_flutter/src/widgets/prueba.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
// final List<NowResponseCatsModel> cats;

//   const DetailScreen(this.cats);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //TODO: cambiar luego por una instancia de movie

    // final   List<NowResponseCatsModel> cats  = ModalRoute.of(context)?.settings.arguments as  List<NowResponseCatsModel>;
    final NowResponseCatsModel cats =
        ModalRoute.of(context)?.settings.arguments as NowResponseCatsModel;
    print('desdde details ${cats.name}');
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Raza ${cats.name}')),
      body: Column(
        children: [
          FadeInImage(
            height: size.height * 0.4,
            placeholder: AssetImage('assets/images/loading.gif'),
            image: NetworkImage('${cats.image.url}'),
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    Text(
                      'Description: ${cats.description}',
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
              
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
