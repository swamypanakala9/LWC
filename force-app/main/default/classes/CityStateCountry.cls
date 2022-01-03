public  class CityStateCountry {
    public static void m1(){
    Map<String,Set<String>> CityNames = new Map<String,Set<String>>();    
    Map<String,Map<String,Set<String>>> StateNames = new Map<String,Map<String,Set<String>>>();
    Map<String,Map<String,Map<String,Set<String>>>> CountryNames = new Map<String,Map<String,Map<String,Set<String>>>>();
    Set<String> Names = new Set<String>{'Con_US','Con_Ind','St_AP','St_TN','St_CA','Ct_HYD'};      
        
            List<Cities__mdt> cts = [select Id, DeveloperName, MasterLabel, Language, NamespacePrefix, 
                                      Label, QualifiedApiName, State__c, Country__c from Cities__mdt ];
            for(Cities__mdt rec : cts)
            {
              if(CityNames.containsKey(rec.State__c))  
                  CityNames.get(rec.State__c).add(rec.DeveloperName);
              else
                  CityNames.put(rec.State__c,new set<string> {rec.DeveloperName});
            }
            system.debug('cities : '+CityNames);
        }
 
}