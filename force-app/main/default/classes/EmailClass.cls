public class EmailClass 
{
   public static void sendSingleMail()
   {
       Messaging.SingleEmailMessage aaa=new Messaging.SingleEmailMessage();
       List<String> sendingEmail=new List<String>{'swamy.panakala@gmail.com'};
           aaa.setToAddresses(sendingEmail);
       aaa.setSubject('This is Subject');
       aaa.setPlainTextBody('This is body of message');
       Messaging.sendEmail(new Messaging.SingleEmailMessage[]{aaa});
          }

}