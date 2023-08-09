public class CWdescription {
        
    public static void CWDesc () {
        //Update Operation
        
        list<Opportunity> Opcw = [SELECT Id,Description FROM Opportunity 
                     where StageName = 'Closed Won'];
        
         for(Opportunity O : Opcw) {
            O.Description = 'NULL';
        }
        
        update Opcw;
               }
}