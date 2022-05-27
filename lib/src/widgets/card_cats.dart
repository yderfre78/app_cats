import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardCats extends StatelessWidget {
  const CardCats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.8,
      color: Colors.red,
      child: Swiper(
        itemCount: 10,
      
        scrollDirection: Axis.vertical,
          pagination: const SwiperPagination(alignment: Alignment.centerRight),
          control: const SwiperControl(),
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 1,
        itemHeight: size.height *1,
        itemBuilder: (__, int index) {
          return FadeInImage(
            placeholder: NetworkImage('https://via.placeholder.com/300x400'),
            image: NetworkImage('https://via.placeholder.com/300x400'),
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}
