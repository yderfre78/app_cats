import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: cambiar luego por una instancia de movie
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-cats';
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Nombre Raza')),
      body: Column(
        children: [
          ImageCats(),
          const SizedBox(
            height: 10,
          ),
             TextScroll(),
       
        ],
      ),
      
      
    );
  }
}

class TextScroll extends StatelessWidget {
  const TextScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
                child: Container(
       padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
       child: Text(
         'Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non risus porttitor lorem bibendum laoreet. Vestibulum aliquet enim ac eros suscipit pharetra ac ac massa. Nunc dignissim pellentesque lorem. Nunc eu nisl pulvinar, malesuada risus sed, scelerisque nunc. Donec nec elementum justo. Donec ut tellus sed sem aliquet rhoncus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent vitae enim finibus, lacinia mi nec, convallis augue. Morbi in enim eget nunc luctus suscipit. Suspendisse interdum pulvinar hendrerit. Integer vitae arcu sed nibh porttitor maximus. Sed non mi in lacus sodales ullamcorper quis suscipit elit. consectetur adipiscing elit. Cras non risus porttitor lorem bibendum laoreet. Vestibulum aliquet enim ac eros suscipit pharetra ac ac massa. Nunc dignissim pellentesque lorem. Nunc eu nisl pulvinar, malesuada risus sed, scelerisque nunc. Donec nec elementum justo. Donec ut tellus sed sem aliquet rhoncus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent vitae enim finibus, lacinia mi nec, convallis augue. Morbi in enim eget nunc luctus suscipit. Suspendisse interdum pulvinar hendrerit. Integer vitae arcu sed nibh porttitor maximus. Sed non mi in lacus sodales ullamcorper quis suscipit elit.',
         textAlign: TextAlign.justify,
         style: Theme.of(context).textTheme.bodyText1,
       ),
                ),
              ),
    );
  }
}

class ImageCats extends StatelessWidget {
  const ImageCats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FadeInImage(
      placeholder: AssetImage('assets/images/loading.gif'),
      image: AssetImage('assets/images/loading.gif'),
      fit: BoxFit.cover,
    );
  }
}
