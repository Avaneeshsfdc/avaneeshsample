public class secondQueueable implements Queueable{
    public void execute(QueueableContext qc){
       system.debug('Second queueable');
       system.debug('=======>');
       System.enqueueJob(new thirdQueueable());
    }
}