trigger AppexTrigger_Delete_Contact_Records_if_MatchWith_Account_Name on Account (before insert) {
    List<String> DummyList=new List<String>();
    for(Account a:Trigger.New){
        DummyList.add(a.name);
    }
List<Contact> c=[SELECT id,name from Contact WHERE name IN :DummyList];
   if(c.size()>0 && c !=null)
    DELETE c;
}