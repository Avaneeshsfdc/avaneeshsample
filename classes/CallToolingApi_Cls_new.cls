global class CallToolingApi_Cls_new {
   @future(callout=true)
   global static void updateTheAccountCustomField(Date todayDate,Id fieldApiId){
      if(todayDate != null && fieldApiId != null){
         Integer currentYear = todayDate.Year();
         
         String endPointUrl = URL.getSalesforceBaseUrl().toExternalForm()+'/services/data/v50.0/tooling/sobjects/CustomField/'+fieldApiId;
         String JSON_body =  getJSON_Body(currentYear);
        HttpRequest req = new HttpRequest();
        
        req.setBody(JSON_body);
        req.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionID());
        req.setHeader('Content-Type', 'application/json');
        req.setEndpoint(endPointUrl);
        req.setMethod('PATCH');
        
        Http h = new Http();
        HttpResponse res = h.send(req);
         
      }
   }
   
   global static String getJSON_Body(Integer CurrentYear){
     String jsonStr = '';
     jsonStr +=' {"Metadata": {';
     jsonStr +=' "label": "Partner Since","type": "Picklist","valueSet": {"valueSetDefinition": {"sorted": false,';
     jsonStr +=' "value": [{"color": null,"default": false,"description": null,"isActive": null,';
     jsonStr +=' "label": " '+CurrentYear+'",';
     jsonStr +=' "urls": null,';
     jsonStr +=' "valueName": "'+CurrentYear+'"},';
     jsonStr +=' { "color": null,"default": false,"description": null,"isActive": null,';
     jsonStr +=' "label": "'+(CurrentYear-1)+'",';
     jsonStr +=' "urls": null,';
     jsonStr +=' "valueName": "'+(CurrentYear-1)+'"}]}}},"FullName": "Account.Partner_Since__c"}';
     return jsonStr;
   }
}