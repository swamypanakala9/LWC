public with sharing class CarTypeSearch {
@AuraEnabled
    public static List<Car_type__c> getCarTypes(){
        return [SELECT Id, Name FROM Car_type__c];
    }
}