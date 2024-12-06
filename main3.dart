import 'dart:io';


import 'manager.dart';
void display(){
  print(" 1.add item  ");
  print(" 2. Remove Item ");
  print(" 3. View List ");
  print(" 4. Search for Item ");
  print(" 5. Exit ");
  print(" ");
  print(" enter the number of your opration ");
  
}
void main(){
 
  Manager manager=Manager();
  while(true){
    display();
     int? num =int.parse(stdin.readLineSync()!);
     if(num==1){
      print("enter the name ");
        String? name= stdin.readLineSync();
         (manager.add(name!))?print(" **added** "):print(" plese enter name not 0 and less than ");
     }
     else if (num==2){
        print("enter the name ");
        String? name= stdin.readLineSync();
         (manager.remove(name!))?print(" **removed** "):print(" this name not found  ");
     }
     else if (num==3){
      manager.veiw_list();
     }
     else if(num==4){
     print("enter the name ");
        String? name= stdin.readLineSync();
        int index=manager.search(name!);
         (index!=-1)?print(" **is found in $index** "):print(" this name not found  ");
     }
     else{
      break;
     }
  }

}