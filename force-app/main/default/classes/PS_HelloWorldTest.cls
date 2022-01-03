@isTest
public class PS_HelloWorldTest {
    
    @isTest static void updateLead(){
        Lead myLead       = new Lead();
        myLead.FirstName  = 'Swamy1';
        myLead.LastName   = 'Panakala1';
        myLead.Company    = 'Self3';
        insert myLead; //For test no org (database records) records available so we need to insert record
         myLead.Company    = 'Self5';
        update myLead; //After inserting record we updated the Company field for testing,
    }

}