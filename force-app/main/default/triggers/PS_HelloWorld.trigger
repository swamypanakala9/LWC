trigger PS_HelloWorld on Lead (before update) {
    for(Lead l:Trigger.New){
        l.FirstName='Hello1';
        l.LastName='World1';
    }
}