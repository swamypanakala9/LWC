trigger HelloWorld on Lead (before update) {
 for (lead l: trigger.new){
 l.firstname='Hello';
 l.Lastname='World';
 }
}