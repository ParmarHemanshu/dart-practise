
///////////// Perform Binary separation for the list and count 0 and 1's from list.

class BinarySeparator{
  
  //function for sorting binary list
  void sortBinaryList(List list){
    list.sort();
    print("Sorted Binary List :"+list.toString());
  }
  
  //check num of zero and ones
  void checkForZeroAndOne(List list){
  int zero_count=0;
  int ones_count=0;
  
    if(list.isEmpty){
      print("Please provide binary list");
    }
    else{
 
    for (int i in list){
    if(i==0){
      zero_count++;
    }
     else{
       ones_count++;
     } 
  }      print("Zeros present in List :"+zero_count.toString());
         print("Ones present in List :"+ones_count.toString());
    }

}
}


void main(){
  
  List<int> list=[1,0,0,1,1,1,0,1];
  print("Default List :"+list.toString());
  
  BinarySeparator b1= new BinarySeparator();
  
  //sort list
  b1.sortBinaryList(list);
  //check no. of 0 and 1
  b1.checkForZeroAndOne(list);
}