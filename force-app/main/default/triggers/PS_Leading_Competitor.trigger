trigger PS_Leading_Competitor on Opportunity (before insert,before update) {
   
    for(Opportunity opp : trigger.new){
         List<String> Comp = new List<String>();
         List<Decimal> Comp_Price = new List<Decimal>();        
        Comp_Price.add(opp.Competitor_1_Price__c);
        Comp_Price.add(opp.Competitor_2_Price__c);
        Comp_Price.add(opp.Competitor_3_Price__c);
        Comp.add(opp.Competitor_1__c);
        Comp.add(opp.Competitor_2__c);
        Comp.add(opp.Competitor_3__c);    
        Decimal LowPrice;
        Integer Position;
 //       for(Decimal d : Comp_Price ){
        for(Integer i=0;i<Comp_Price.size();i++){
            if(LowPrice==null || LowPrice > Comp_Price.get(i)){
                LowPrice = Comp_Price.get(i);
                Position = i;
                System.debug('LowPrice '+ LowPrice);
                System.debug('Position '+ Position);
    //          }
            
           opp.Leading_Competitor__c = Comp.get(Position);
                }}
    }  
}