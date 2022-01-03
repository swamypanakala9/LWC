public class ToDoController {

  
    
@AuraEnabled
   //public static String addTodo(String payload){
    public static String addTodo(String Name, Boolean done){
      // Todo payloadObject = (Todo) JSON.deserialize(payload,Todo.class); 
       //Here we are deserialising because taking data from UI and insering to Salesforce
       SObject tsk = (SObject) Type.forName('Todo__c').newInstance();
       tsk.put('Name',Name); // tsk.put('Name',payloadObject.todoName);
       tsk.put('done__c',done);  // tsk.put('done__c',payloadObject.done);
    //  Todo__c tsk = new Todo__c();
    //  tsk.Name=Name;
    //  tsk.done__c=done;
       insert tsk;
       return String.valueOf(tsk.Id);
    }  

    @AuraEnabled
    public static void updateTodo( Boolean done, id id){
       SObject tsk = (SObject) Type.forName('Todo__c').newInstance();
        tsk.put('done__c',!done);  // tsk.put('done__c',payloadObject.done);
         tsk.put('id',id);
         update tsk;        
      }  
      @AuraEnabled
      public static void deleteTodo(id id){
         SObject tsk = (SObject) Type.forName('Todo__c').newInstance();
           tsk.put('id',id);
           delete tsk;
          }  
    @AuraEnabled
    public static List<Todo__c> allTodos(){
        return [Select id,Name,done__c,createddate from Todo__c ];
    } 
    @AuraEnabled(cacheable=true)
    public static List<Todo__c> TodoList(String Serchkey){
       try {
          if(Serchkey != null)
          return [Select id,Name,done__c,CreatedDate from Todo__c where Name like : '%'+Serchkey+'%' order by lastmodifieddate desc];
         else {
            return [Select id,Name,done__c,CreatedDate from Todo__c ];
         }
         } catch (Exception e) {
          throw new AuraHandledException(e.getMessage());
       }
    }

    Class Todo{
       @AuraEnabled
        public String todoName;
         @AuraEnabled
        public String done;
        }    
    
}