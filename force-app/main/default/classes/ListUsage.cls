public class ListUsage {
    public static Integer count = 0;
    public static void listUse() {
        count++;
        List<String> namesLst = new List<String>{'Pooja','Rasmi'};
        namesLst.add('Nayana');
        namesLst.add('Josana');
        namesLst.add('Nayana');
        namesLst.add('Jaffer');
        system.debug('namesLst: '+namesLst+ ' with size: '+namesLst.size());
        namesLst.remove(1);
        system.debug('2nd index val: '+namesLst.get(2));
        system.debug('3rd index val: '+namesLst[3]);
        namesLst.set(2,'Amal');
        namesLst.set(3,'Paul');
        namesLst.sort(); 
        system.debug('namesLst: '+namesLst+ ' with size: '+namesLst.size());
        List<String> namesDesLst = new List<String>();
        for(Integer i = namesLst.size() - 1; i >= 0 ; i--) {
            namesDesLst.add(namesLst[i]);
        }
        system.debug('namesDesLst: '+namesDesLst+ ' with size: '+namesDesLst.size());
        system.debug('name contains? '+namesDesLst.contains('Ashok'));
        system.debug('name contains? '+namesDesLst.contains('Amal'));
        List<String> namesLst2 =  new List<String>{'Shajith'};
        namesLst2.addAll(namesLst);
        system.debug('namesLst2: '+namesLst2+ ' with size: '+namesLst2.size());
        List<String> namesLst3 = namesLst2.clone();
        system.debug('namesLst3: '+namesLst3+ ' with size: '+namesLst3.size());
        namesLst3.clear();
        system.debug('namesLst3 is empty? '+namesLst3.isEmpty());
        Integer[] numArray = new Integer[3];
        numArray[0] = 100;
        numArray[1] = 500;
        numArray[2] = 300;
        numArray.add(100); 
        system.debug('numArray: '+numArray+ ' with size: '+numArray.size());
    }
}