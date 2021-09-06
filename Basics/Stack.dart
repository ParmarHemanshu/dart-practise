////////////// Implementing Stack Data Structure with Push , Pop operations and basic Validations
//Class Stack
class Stack {
  //creating dynamic list 
  List items=[0];
  
  //Constructor taking the list or you can create getter setter for items
  Stack(this.items);
 
  //for pushing item
  List push(String item,List $items) {
    if(item.isEmpty){

      print("\n *****Null value is not allowed*****");
      
    }else{
        this.items.add(item);
       print("\n--------------------------\nStack after adding $item :\n--------------------------");
    
    //print updated stack
    for(var item in items.reversed)
    {
    print("$item");
    }
    }
 
    return items;
  }
 
  //for pop/removing item
  void pop(List $items) {
    if(items.isEmpty){
      print("***No Items in the stack***");
  
    }else
    {
 
    print("\n--------------------------\nPopped Element is :"+this.items.removeLast().toString());
    print("--------------------------\nStack after removing Element :\n--------------------------");
    for(var item in items.reversed)
    {
    print("$item");
    }
   
    }
   
  }
}


 
void main() {
  
 //creating list 
  List myList = ["abc","786","hello","758.47347"];
 
 // print Initial stack stage
  print("--------------------------\nDefault stack:\n--------------------------");
  if(myList.isNotEmpty){
     for(var item in myList.reversed)
  {
    print("$item");
  }
    
  }
 
  //create object of stack 
  Stack s1 = new Stack(myList);
  
  
  //null checking for null insertion
  s1.push("",myList);
  
  //check for empty stack if list is empty
  s1.pop(myList);
  
  //push any item at end at perticluar list
  List updated_list= s1.push("404",myList);
  
  
  //pop one item from updated list TOP
  s1.pop(updated_list);
  
  s1.push("xyz",updated_list);
 
  
}