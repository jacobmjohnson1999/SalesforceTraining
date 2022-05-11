@isTest
public class ContactTriggerTest {
	//This method will be run before each of my tests it is used for setup tasks like creating dummy data
    @testSetup
    public static void setup(){
        Contact c = new Contact(LastName='Test', Email='caroline.nordt@revature.com');
        	insert c;
    }
    
    @isTest/*(SeeAllData=True)*/
    public static void dupEmailTest(){
        Test.startTest();
        try{
        	Contact c2 = new Contact(LastName='Test', Email='caroline.nordt@revature.com');
        	insert c2;
        } catch(Exception e){
            System.assert(e.getMessage().contains('This email already exists in the system is this a duplicate user'));
        }
        Test.stopTest();
    }
    @isTest/*(SeeAllData=True)*/
    public static void nondupEmailTest(){
        Test.startTest();
        	Contact c2 = new Contact(LastName='Test', Email='caroline.nordt@revature.net');
        	insert c2;
        Test.stopTest();
        List<Contact> c = [SELECT ID, EMAIL FROM Contact WHERE Email = 'caroline.nordt@revature.net'];
        system.assertEquals(1, c.size());
    }
}