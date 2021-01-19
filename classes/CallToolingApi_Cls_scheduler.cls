public class CallToolingApi_Cls_scheduler implements schedulable{

   public void execute(schedulableContext sc){
      //CallToolingApi_Cls_new cc = new CallToolingApi_Cls_new ();
     CallToolingApi_Cls_new.updateTheAccountCustomField(date.today(),'01p2v00000U842J');
   }
}