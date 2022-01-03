trigger IQVIA_Trig1 on Contact (before insert) {
     try{
            Set<id> AccountIds = new Set<id>();
            map<id,String> mapAccountPhone=new map<id,String>();            
            for(contact c : trigger.new){
                AccountIds.add(c.AccountId);              
            }
         for(Account Acc:[select Id,phone from Account where id in : AccountIds])
        {
            mapAccountPhone.put(Acc.id,Acc.phone);
            mapAccountPhone.put(Acc.id,Acc.phone);
            mapAccountPhone.put(Acc.id,Acc.phone);
              }    
        for(contact c1 : trigger.new){
                c1.phone = mapAccountPhone.get(c1.AccountId);                 
        }
    }
    Catch(Exception Err)
         {
          System.debug('Exception Occured:'+Err);
        }

}