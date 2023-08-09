public class SampleController {
     
    Public string selectedObj{get;set;}
     
    Public List<Selectoption> getObjList(){
        List<Schema.SObjectType> objList = Schema.getGlobalDescribe().Values();     
        List<SelectOption> objNames = new List<SelectOption>();
        objNames.add(new SelectOption('','-- Select --'));
        for(Schema.SObjectType obj : objList)
        {
            objNames.add(new SelectOption(obj.getDescribe().getName(),obj.getDescribe().getLabel()));
        }
        objNames.sort();
        return objNames;
    }
}