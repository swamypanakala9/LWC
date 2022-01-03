public with sharing class lwcMethodsClass {
    public lwcMethodsClass() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(String name){
        try {
            String cname='%'+name+'%';
            return [select id,name,Phone,Rating from Account where name like :cname];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts2(){
        try {
           return [select id,name,Phone,Rating from Account limit 5];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

}
