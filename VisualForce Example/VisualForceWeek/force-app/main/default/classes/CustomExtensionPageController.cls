public class CustomExtensionPageController {
    
    public String pageName {set;get;}
    public Integer count {set;get;}
    
    public CustomExtensionPageController(ApexPages.StandardController sc){
        
    }
    
    public void nameIt(){
        if(count == null){count =0;}
        this.pageName = 'Hello world ' + count;
        count++;
    }

}