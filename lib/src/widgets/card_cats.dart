import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardCats extends StatelessWidget {
  const CardCats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      color: Colors.red,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height + 0.9,
        itemBuilder: (__, int index) {
          return FadeInImage(
            placeholder: NetworkImage('https://via.placeholder.com/300x400'),
            image: NetworkImage('https://via.placeholder.com/300x400'),
          );
        },
      ),
    );
  }
}
