trigger AppexTrigger_Email_Null_Condition on Contact (after insert,before update) {
    for(contact c:Trigger.New){
   /****** I want through seperate error message for insert and update
    *      /*   if(c.Email==null)
            c.addError('No email');  */
        
        if(Trigger.isInsert && c.Email==null)
            c.addError('You cannot insert contact without email');
       
        if(Trigger.isUpdate && c.Email==null)
        //    c.addError('You cannot update contact without email');
       system.debug(Trigger.New); 
         if(Trigger.isUpdate && c.Phone=='999' )
       //    c.addError('You cannot enter mobile number--- 999');
        c.HomePhone='123123123';
        if(c.Phone=='999')
           c.HomePhone='9977';
        system.debug(c.HomePhone); 
        system.debug('Hi this is debug log testing'); 
        
    }
}