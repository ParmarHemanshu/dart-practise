/////////// Implement Bubble Sorting technique on given List using Dart 

class BubbleSort{
  
//Asc bubble sort
void bubbleSort_asc(List list) {
  
  //n = max lengh of list
  int n = list.length;
  for (var i = 0; i < n; i++) {
    
    for (var j = 0; j < n - i - 1; j++) {
      
      if (list[j] > list[j + 1]) {
        
        var temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}
//Desc bubble sort
void bubbleSort_desc(List list, int n) {
  
  //check if less than or single element present in list
  if (n <= 1){
    return;
  }

  for (var i = 0; i < n - 1; i++)

    if (list[i] < list[i + 1]) 
    {
      var temp = list[i];
      list[i] = list[i + 1];
      list[i + 1] = temp;
    }
  
  //recursive fun until the limit passed to fun
  bubbleSort_desc(list, n - 1);
}
}
void main(){
  
  List list = [10,88,45,-345,101.234];
  int size=list.length;
  
  //default list
  print("Default List: $list");
  
  //make an object of Bubblesort class
  BubbleSort b1=new BubbleSort();
  
  //asc 
  b1.bubbleSort_asc(list);
  print("List in Asc order: $list");
  
  //desc
  b1.bubbleSort_desc(list,size);
  print("List in Desc order: $list");
  
}
