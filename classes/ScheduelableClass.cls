public class ScheduelableClass implements Schedulable{

   public void execute(SchedulableContext sc){
      integrationClass ic = new integrationClass();
      ic.run();
   }
}