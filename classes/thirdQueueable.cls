public class thirdQueueable implements Queueable{
    public void execute(QueueableContext qc){
       system.debug('third queueable');
       system.debug('=======>');
       System.enqueueJob(new AccountQueueableClass ());
    }
}