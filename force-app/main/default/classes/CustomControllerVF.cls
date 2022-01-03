public class CustomControllerVF {
Public String ST ='Hello how are you please Smile';
Public String ST1{get;set;}


public String getST(){
return ST;
}
Contact Con = new Contact();
public Contact getCon(){
return Con;
}
public pagereference DML(){
ST=ST1;
//insert Con;
return null;

}
public pagereference DML1(){
ST=ST1;
//insert Con;
return null;

}
}