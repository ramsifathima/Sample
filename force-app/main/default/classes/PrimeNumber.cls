public class PrimeNumber{    
    public static integer n=5;
     public static void checkPrime(){ 
     integer m,i,flag=0;
     m=n/2;      
     if(n==0||n==1){  
      System.debug(n+' is not prime number');      
     }else{  
      for(i=2;i<=m;i++){      
        if(math.mod(n,i)==0){      
        System.debug(n+' is not prime number');      
        flag=1;      
        break;      
       }      
      }      
      if(flag==0)  {
          System.debug(n+' is prime number'); 
      }  
     }
   }  
    }