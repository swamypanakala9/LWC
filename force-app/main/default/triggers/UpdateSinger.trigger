// Whenever the Rating >  10 budget should update to Rahul
trigger UpdateSinger on Song__c (before update) {

for(Song__c s : trigger.new){

s.Singer__c = 'Rahul s';
if(s.Rating__c > 15)
s.Singer__c = 'Kanika';

}}