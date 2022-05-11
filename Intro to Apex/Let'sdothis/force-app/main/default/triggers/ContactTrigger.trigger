trigger ContactTrigger on Contact (before insert, before update, before delete, after delete, after update, after undelete, after insert) {
    switch on Trigger.operationType{
        when BEFORE_INSERT{
            //This is going to prevent duplicates using the email fields as my matching criteria
            Set<String> nonDupEmails = new Set<String>();
            List<Contact> existingContacts = [SELECT ID, Email FROM Contact];
            for(Contact con : existingContacts){
                nonDupEmails.add(con.email);
            }
            for(Contact con: Trigger.new){
                if(nonDupEMails.contains(con.email)){
                    con.addError('This email already exists in the system is this a duplicate user');
                }
            }
        }
    }
}