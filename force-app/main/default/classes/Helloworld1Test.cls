@isTest
public class Helloworld1Test {
    @isTest static void updateLead(){
        Lead l =new Lead();
        l.LastName='any name';
        l.Company = 'any';
     //   l.FirstName='first';
        insert l;
        l.LastName='any name1';
        l.FirstName='sdf';
        l.Company= 'shsdj';
      
        update l;
    }

}