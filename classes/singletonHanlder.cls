public class singletonHanlder{
private static singletonHanlder instance = null;
  private singletonHanlder(){
  //1 
  //2
  
  }
  
  public static singletonHanlder createInstance(){
     if(instance == null) instance = new singletonHanlder();
     return instance;
  }

}