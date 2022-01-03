global class CreateAccounEmailServices implements Messaging.InboundEmailHandler {

     global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
		  Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();
         // return result;
      string accName=email.fromName;
         string accDes=email.plainTextBody;
         string accIndus=email.subject;
         Account ac=new Account(Name=accName,Description=accDes,Industry=accIndus);
         insert ac;
         return null;
     
  }
}