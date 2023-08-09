//Top level type must have public or global visibility
Public Class Rectangle{
     //Class level variable
     @TestVisible Decimal length, breadth;//Default value:null
     //Default comstruction
     Public Rectangle(){
       length=breadth=0;
     }
     Public Rectangle(Decimal length,Decimal breadth){
       /*Name shadow:If the local variables and class level variables both are same, system gives more priority to the local variables, due to this class 
       variables won't be visible. To bring visibility to the class level variable, we need to use this operator */
       this.length=length;
       this.breadth=breadth;
     }
     Public void showResult(){
       //Logic
     }
     Public Decimal area(){
       return length*breadth;
     }
     Public Decimal area(Decimal length, Decimal breadth)
     {
       return length*breadth;
     }
     Public Decimal perimeter(){
       return 2*(length+breadth);
     }
}