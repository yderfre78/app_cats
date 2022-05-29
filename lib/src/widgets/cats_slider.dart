import 'package:app_cats_flutter/src/models/models.dart';
import 'package:flutter/material.dart';

class CatsSlider extends StatelessWidget {
  final List<NowResponseCatsModel> cats;

  const CatsSlider(this.cats);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.9,
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: this.cats.length,
                itemBuilder: (_, int index) {
                  return Container(
                    width: 130,
                    height: size.height * 0.6,
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Nombre: ${cats[index].name}'),
                              Text(cats[index].id),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'detailsScroll', arguments: cats[index]),
                          child: FadeInImage(
                            image: NetworkImage(cats[index].image.url),
                            placeholder:
                                AssetImage('assets/images/loading.gif'),
                            fadeInDuration: const Duration(milliseconds: 200),
                            width: double.infinity,
                            height: 330,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Origen: ${cats[index].origin}'),
                            Text(
                                'Inteligencia: ${cats[index].intelligence.toString()}'),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
