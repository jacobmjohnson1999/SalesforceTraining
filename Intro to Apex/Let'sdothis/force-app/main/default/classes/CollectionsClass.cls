public class CollectionsClass {
	
    public static void cols(){
        //We have 3 types of collections in APEX Lists, Sets, Maps
        //Lists: are ordered, indexable collections of iteams with a shared data type
        //Sets: are unorder collections that do not allow for duplicates
        //Maps: are a set of key value pairs, the key should be a unique idetifier for the data contained inside the map
        
        Set<String> emailSet = new Set<String>();
        List<Contact> conList = [SELECT Name, Email FROM Contact];
        for(Contact c : conList){
            emailSet.add(c.Email);
            //emailSet.add(c.Name);
        }
        system.debug(emailSet);
        for(String s : emailSet){
            system.debug(s);
        }
        system.debug('            ');
        for(String s : emailSet){
            system.debug(s);
        }
        
        //Maps
        //{{key:value},{key:value}}
        Map<String,Contact> accountCon = new Map<String,Contact>();
        for(Contact con :conList){
            accountCon.put(con.Id,con);
        }
        system.debug(accountCon);
        system.debug(accountCon.keySet());
        system.debug(accountCon.get('0035e00000C6Ca4AAF'));
        
    }
}