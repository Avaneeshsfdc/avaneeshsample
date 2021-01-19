public class MetaDataClass {
    
    
    public static void callFunction(){
        String picklistapiname = 'Account.Year__c';
        MetadataService.MetadataPort service = new MetadataService.MetadataPort();   
        service.SessionHeader = new MetadataService.SessionHeader_element();
        service.SessionHeader.sessionId = UserInfo.getSessionId();
        
        MetadataService.CustomField customField = (MetadataService.CustomField) service.readMetadata('CustomField', new String[] { picklistapiname}).getRecords()[0];
        
        // For each on: customField > Get valueset > Get valueSetDefinition > get values
        for(MetadataService.CustomValue objCustomValue : customField.valueSet.valueSetDefinition.value){
            system.debug('====='+objCustomValue);
            if(objCustomValue.fullName == '2019'){ // API Name
                objCustomValue.fullName = '2222'; // New API Value
                //objCustomValue.Label = '2222'; // New Label value
            }
        }
        // Update 
        List<MetadataService.SaveResult> lstResults = service.updateMetadata( new MetadataService.Metadata[] { customField });
        
        for (MetadataService.SaveResult objResult : lstResults) {
            if (objResult.success) {
                System.debug('Successfully updated');
            }
            else {                       
                if(objResult.errors.size() > 0){
                    System.debug('eror : ' + objResult.errors[0].message);
                }
            }
        }
    }
}