import 'package:flutter/material.dart';

class CatsSlider extends StatelessWidget {
  const CatsSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CardsCats(size: size);
  }
}

class CardsCats extends StatelessWidget {
  const CardsCats({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, 'details', arguments: 'movie-instance'),
      child: CardCat(size: size),
    );
  }
}

class CardCat extends StatelessWidget {
  const CardCat({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.9,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (_, int index) {
                  return Container(
                    width: 130,
                    height: size.height * 0.6,
                    color: Colors.green,
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text('Nombre Raza'),
                              Text('Mas...'),
                            ],
                          ),
                        ),
                        const FadeInImage(
                          placeholder: AssetImage('assets/images/no-image.jpg'),
                          image: NetworkImage(
                              'https://via.placeholder.com/300x400'),
                          width: double.infinity,
                          height: 330,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text('Pais de origen'),
                            Text('Inteligencia')
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
