public class ActionStatusNewEx {
    public String Selected{get;set;}
    public List<SelectOption> ListSel {get;set;}
    public ActionStatusNewEx(){
 
        ListSel = new List<SelectOption>();
        SelectOption s1 = new SelectOption('one','ONE');
        SelectOption s2 = new SelectOption('two','TWO');
        SelectOption s3 = new SelectOption('three','THREE');
        ListSel.add(s1);
        ListSel.add(s2);
        ListSel.add(s3);
    }
    

}