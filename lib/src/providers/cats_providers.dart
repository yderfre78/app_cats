import 'package:flutter/material.dart';

class CatsProvider extends ChangeNotifier {
  CatsProvider(){
    print('Cats Provider Init');
    this.getOnDisplayCats();
  }

  getOnDisplayCats() async{
    print('getOnDisplayCats');
  }
}