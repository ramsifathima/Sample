Public Class Calculation
{
  @TestVisible Decimal num1,num2;
  Public Calculation()
  {
    num1 = num2 = 0;
  }
  Public Calculation(Decimal num1 , Decimal num2)
  {
    this.num1 = num1;
    this.num2 = num2;
  }
  Public void showResult()
  {
    //Logic
  }
  Public Decimal addition()
  {
    return num1+num2;
  }
  Public Decimal subtraction()           
  { 
    return num1-num2;
  }
  Public Decimal multiplication()
  {
    return num1*num2;
  }
  Public Decimal division(){
    try
     {
        return num1/num2;
     } 
     catch(Exception e){
        system.debug(' Division Exception:' +e.getMessage()+' in line number:'+e.getLineNumber());
     }
     return null;
   }     
}