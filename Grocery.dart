import 'dart:math';
class Grocery {
  String name ="" ;
  int id =0;
  Grocery(){
    id=generat_id();
  }

  // ignore: non_constant_identifier_names
  int generat_id() {
      Random random = new Random();
      int randomNumber = random.nextInt(100);
      return randomNumber;
  }
}