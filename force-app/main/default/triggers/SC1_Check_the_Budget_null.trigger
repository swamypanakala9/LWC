trigger SC1_Check_the_Budget_null on Tollywood__c (before insert,before update) {

for(Tollywood__c t:Trigger.new){
  if(t.Budget__c==null)
 // t.Director__c='Rajamouli';
  t.addError('Budget filed is empty Apex trigger error');

}
}