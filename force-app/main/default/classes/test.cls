public class test 
{
  public static integer int1 = 4;
    public  integer int2=8;
    public Account Acc{get;set;}
    public Boolean flag{get;set;}
    public void meth(integer i,integer j){
        system.debug('sum is '+(int1+int2));
        int1 = i;
        int2 = j;
        system.debug('sum is '+(int1+int2));
        test3.meth2();
    }
}