public class AccountQueueableClass implements Queueable{
    public void execute(QueueableContext qc){
       system.debug('first queueable');
       system.debug('=======>');
       System.enqueueJob(new secondQueueable());
    }
}