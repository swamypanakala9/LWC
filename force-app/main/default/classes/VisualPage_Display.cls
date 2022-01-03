public class VisualPage_Display{
String Keyword;   // We defined the variable for search text in database
List<Tollywood__c> Tollywood; // Defined the List of variables

//Creating get methods for returning values
public List<Tollywood__c> getTollywood(){
   return Tollywood;
}
public String getKeyword(){
   return Keyword;
}
public void setKeyword(String s){  // We can enter any word we want to search using set method
  keyword=s;
  }
public pageReference Search(){
Tollywood = (List<Tollywood__c>)[FIND :keyword in ALL FIELDS  RETURNING Tollywood__c(id,name,rating__c,budget__c,Hero_Name__c)][0]; 
return null;
}
}