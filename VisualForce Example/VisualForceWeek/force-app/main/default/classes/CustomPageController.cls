public class CustomPageController {
    
    public Account acc {get{
        if(acc==null){
            return [SELECT Id, Name FROM Account WHERE Name='Grand Hotels & Resorts Ltd'];
        }else{
            return acc;
        }
    }set;}
    
    public List<Contact> conList {get{
        if(conList==null){
            return [SELECT ID, Name, Phone FROM Contact WHERE AccountID=:acc.Id];
        }else{
            return conList;
        }
    }set;}

}