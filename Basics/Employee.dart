////////////// Program for Adding Bonus salary to those who are having salary below 20,000

class Employee{
  
  //object will have salary_list variable
 List salary_list=[0];
  
  //setter method for of salary
void setSalary(List sal){
  this.salary_list=sal;
}
  //getter method for salary
 List getSalary(){
   return this.salary_list;
 }

  //method for giving bonus to employees
void giveBonusToEmployees(List salary_list,int bonus){
    for (int salary in salary_list){
      if(salary <= 20000 && bonus > 0){
        salary=salary+bonus;
      print(salary);
       
      }
    }
   
    
  }
}



void main(){
  List<int> sal_list=[12345,3000,5000,44000,50000];
  
  Employee e1=new Employee();
  
  e1.setSalary(sal_list);
  print(e1.getSalary());
  
  //give bonus to whom where salary is below 20000
  e1.giveBonusToEmployees(sal_list,1001);

  
}
