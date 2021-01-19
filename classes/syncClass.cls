public class syncClass{

  public void callMethod(){
  
    for(Integer i=0;i<60;i++){
       system.enqueueJob(new AccountQueueableClass());
    
    }
  }
}