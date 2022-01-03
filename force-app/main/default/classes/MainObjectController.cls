public class MainObjectController {
public List<RecordTest__c> RecordTestRecord{get;set;}
public String SampleText1 = 'Hello World1';
public String SampleText2{get;set;}
public Main_Object__c Mobj{get;set;}
public MainObjectController(){
RecordTestRecord = [select Name,Rating__c from RecordTest__c  limit 4 ];

Mobj = new Main_Object__c();
}
public Pagereference Search1(){
RecordTestRecord = [select Name,Rating__c from RecordTest__c where Name = : SampleText2 limit 40 ];
return null;
}
public String getSamText(){
return SampleText1 ;
}
public pageReference MethodInsert(){
insert Mobj;
return new pageReference('/'+Mobj.id) ;
}
}