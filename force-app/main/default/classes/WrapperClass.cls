public class WrapperClass {
    public  List<WrapperInnerClass> RecordList {get;set;}
     public transient List<WrapperInnerClass> SelectedRecordList {get;set;}
    public WrapperClass(){
                RecordList = new List<WrapperInnerClass>();  
        SelectedRecordList = new List<WrapperInnerClass>();  
    WrapperInnerClass Rec1 = new WrapperInnerClass();
    Rec1.Name1 = 'Narayan';
    Rec1.Name2 = 'Panakala';
    Rec1.Checked = false;
    RecordList.add(Rec1);
        WrapperInnerClass Rec2 = new WrapperInnerClass();
    Rec2.Name1 = 'Durga';
    Rec2.Name2 = 'panakala';
    Rec2.Checked = false;
    RecordList.add(Rec2);
        for(Account a : [Select Name,AccountNumber from Account limit 10]){
            WrapperInnerClass Rec3 = new WrapperInnerClass();
         Rec3.Name1 =a.Name;
         Rec3.Name2 =a.AccountNumber ;
         Rec3.Checked = false;
         RecordList.add(Rec3);
    }}
    public void SelectedRec(){
        SelectedRecordList = new List<WrapperInnerClass>(); 
      
        for(WrapperInnerClass w : RecordList ){
            if(w.Checked){
            WrapperInnerClass y = new WrapperInnerClass();
         
            y.Name1 = w.Name1;
            y.Name2 = w.Name2;
            SelectedRecordList.add(y);
         //    SelectedRecordList.add(w); //We dont want to add checklist field value in Selected record list
            
             
            }
        }
   
    }
   
    public class WrapperInnerClass{
        public String Name1{get;set;}
        public String Name2{get;set;}
        public Boolean Checked{get;set;}
    }    

}