public class ExceptionPageController {
    public ExceptionPageController(ApexPages.StandardController sc){
        
    }
    
    public void makeitBreak(){
        Contact c = new Contact(FirstName='Bob');
        try{
            insert c;
        }catch(Exception e){
            ApexPages.addMessages(e);
        }
    }

}