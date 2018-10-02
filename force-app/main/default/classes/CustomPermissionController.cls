public with sharing class CustomPermissionController {
    public String retValue {get; set;}
    public String buttonName {get; set;}

    public CustomPermissionController(){
        retValue = 'Nothing Clicked Yet';
    }

    public PageReference isCustomPermissionEnabled(){
        if(FeatureManagement.checkPermission(buttonName)){
            this.retValue ='True';
        }else{
            this.retValue='False';
        }
        return null;
    }
}
