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
      onTap: ()=> Navigator.pushNamed(context,'details',arguments: 'movie-instance'),
      child: Container(
        height: size.height*0.9,
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Expanded(
           child: ListView.builder(
             itemCount: 20,
             itemBuilder:(_, int index){
               return Container(width: 130,
               height: size.height*0.5,
               color: Colors.green,
               margin: EdgeInsets.all(20),
    
               ); 
             }
           ),
         )],
        ),
      ),
    );
  }
}
