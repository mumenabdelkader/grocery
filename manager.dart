import 'Grocery.dart';

class Manager {
 
  List<Grocery> grocery=[];


  bool add(String name){
   
    if (name.isNotEmpty&&name.length<12){
       Grocery gro=Grocery();
       gro.name=name;
       grocery.add(gro);
       return true;
    }
    else 
    {
      return false;
    }
  }
  bool remove(String name){
    int index=search(name);
     if (index!=-1){
        grocery.remove(grocery[index]);
         return true;
         }
      else
       { return false;}
   
  }
  int search(String name){
     for(int i=0;i<grocery.length;i++){
      if(grocery[i].name==name){
       
         return i;
      }
    }
   return -1;
   
  }
  void veiw_list(){
    for(int i=0;i<grocery.length;i++){
      print(
       "name : ${grocery[i].name} id : ${grocery[i].id}");
    }

  }
} 