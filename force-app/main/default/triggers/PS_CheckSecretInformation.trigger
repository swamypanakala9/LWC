trigger PS_CheckSecretInformation on Case (after insert,before update) {
    //Step 1: Create a collection containing each of our secret keywords
    Set<String> secretKeywords=new Set<String>();
        secretKeywords.add('Credit Card');
        secretKeywords.add('Socail Security');
        secretKeywords.add('SSN');
        secretKeywords.add('Passport');
        secretKeywords.add('Bodyweight');
    Set<String> ExistingSecretKeywords=new Set<String>();
        
    
    //Step 2: Check to see if our case contains any of the secret keywords
   List<Case> casesWithSecretInfo = new List<Case>();
    for(Case myCase : Trigger.new){
        if(myCase.Subject != 'Warning:Parent Case contains secret info'){
            if(myCase.Description.containsIgnoreCase('Credit Card')){
                ExistingSecretKeywords.add('Credit Card');
            }
             if(myCase.Description.containsIgnoreCase('Socail Security')){
                ExistingSecretKeywords.add('Socail Security');
            }
            if(myCase.Description.containsIgnoreCase('SSN')){
                ExistingSecretKeywords.add('SSN');
            }

        for(String keyword : secretKeywords){
            if(myCase.Description !=null && myCase.Description.containsIgnoreCase(keyword)){
                casesWithSecretInfo.add(myCase);
                system.debug('Case '+ myCase.Id + 'include secret keyword ' +keyword );
                break;
            }
        }
            }
     } 
    //Step 3: If our case contains a secret keyword, create a child case
    for(Case caseWithSecretInfo : casesWithSecretInfo){
        Case childCase = new Case();
        childCase.Subject='Warning:Parent Case contains secret info';
        childCase.ParentId=caseWithSecretInfo.Id;
        childCase.IsEscalated=true;
        childCase.Priority='High';
        childCase.Description='Atleast one of the following keywords were found : '+ ExistingSecretKeywords;
        insert childCase; 
    }

}