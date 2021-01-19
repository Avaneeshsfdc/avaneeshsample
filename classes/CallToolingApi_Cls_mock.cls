@isTest
public class CallToolingApi_Cls_mock implements HttpCalloutMock {
   
   public HTTPResponse respond(HTTPRequest request) {
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        response.setBody(CallToolingApi_Cls_new.getJSON_Body(2020));
        response.setStatusCode(200);
        return response;
   }

}