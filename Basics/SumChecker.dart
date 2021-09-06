//////////// Give List and integer number it will find all unqiue pair combination as a sum of that number from list

class SumChecker{
  
  //check for elements whoes addition is given num
  void getPairsOfNumber(List<int> list,int num){
    for (int i=0;i<list.length;i++){
      for(int j=i+1;j<list.length;j++){
        if(list[i]+list[j]==num){
         
          //print non repeated numbers
         print(list[i].toString()+","+list[j].toString());
        
        }
      }
    }
  }
}


void main(){
  
  List<int> list=[2,3,5,6,4,1];
  
  SumChecker s1=new SumChecker();
  
  //pass list and number whose sum elements u want to find
  s1.getPairsOfNumber(list,7);
}