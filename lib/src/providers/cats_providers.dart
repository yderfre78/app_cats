

class CatsProvider {
  CatsProvider(){
    print('Cats Provider Init');
    this.getOnDisplayCats();
  }

  getOnDisplayCats() async{
    print('getOnDisplayCats');
  }
}