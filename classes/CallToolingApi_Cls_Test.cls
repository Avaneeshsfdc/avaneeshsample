@isTest

Public class CallToolingApi_Cls_Test{

   public static testmethod void testCase(){
   Test.setMock(HttpCalloutMock.class, new CallToolingApi_Cls_mock());
   CallToolingApi_Cls_new.updateTheAccountCustomField(date.today(),'00N2v00000YSKwG');
   }
   public static testMethod void testcase1(){
   test.startTest();
     Test.setMock(HttpCalloutMock.class, new CallToolingApi_Cls_mock());
     CallToolingApi_Cls_scheduler m = new CallToolingApi_Cls_scheduler ();
     String sch = '20 30 8 10 2 ?';
     String jobID = system.schedule('Merge Jobssssssssss', sch, m);
     test.stopTest();
   }
  

}