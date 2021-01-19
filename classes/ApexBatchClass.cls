public class ApexBatchClass implements Database.batchable<Sobject>,Database.Stateful{
   public Integer counter=0;
   public static Integer counter1=0;
   public Database.QueryLocator start(Database.batchableContext bc){
    
    return database.getQueryLocator('select id , name from account');
   }
   
   public void execute(Database.batchableContext bc,List<Account> scope){
      counter ++;
      counter1++;
      system.debug('==>>counter'+counter);
      system.debug('==>>counter'+counter1);
   }
   
   public void finish(Database.batchableContext bc){
     //futureMethod.futures();
   }
}