trigger AppexTrigger_New_Lead_Record_Without_Duplicate_Email on Lead (before insert) {
    Set<String> dummy = new Set<String>();
    for(Lead l:Trigger.New){
        dummy.add(l.Email);
    
    List<Lead> LeadList=[Select id,Email from Lead where Email IN :dummy]  ;
    if(LeadList.size()>0)
        l.addError('Email was aleary there');
}}