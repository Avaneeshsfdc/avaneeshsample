public class IntegrationRequestClass{

   public static void sendRequest(){
        database.executeBatch(new ApexBatchClass ());
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        // Set the body as a JSON object
        request.setBody('{"name":"mightyssss moose"}');
        HttpResponse response = http.send(request);
        // Parse the JSON response
        if (response.getStatusCode() != 201) {
        System.debug('The status code returned was not expected: ' +
        response.getStatusCode() + ' ' + response.getStatus());
        } else {
        System.debug(response.getBody());
        }
        
   }
}