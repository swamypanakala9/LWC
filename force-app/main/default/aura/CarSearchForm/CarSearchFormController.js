({
    doInit : function(component, event, helper) { 
       //will be fetching car tpe from backend using apex controller
        var createCarRecord=$A.get("e.force:createRecord");
        if(createCarRecord){
            component.set("v.showNew",true);
        }else{
            component.set("v.showNew",false);
            console.log('Event not supported');
       }
        helper.getCarType(component, helper);
         }, 
      // Set CarType Manually....  
    /*   var carTypes=component.get("v.carTypes");
       component.set("v.carTypes",['Sports car','Luxury car','Van','Auto']);
       carTypes=component.get("v.carTypes");    */
           
	onSearchClick : function(component, event, helper) {
		helper.heandleOnSearchClick(component, event, helper);
	},
        
 /*   toggleButton : function(component, event, helper) {
    var currentValue=component.get("v.IsNewAvailable");
        if(currentValue){
    component.set("v.IsNewAvailable",false);
        } else{
    component.set("v.IsNewAvailable",true);
          }  },   */
    
    //getting(finding and showing required value) the values from aura:id
    newValueSelected : function(component, event, helper) { 
        var carTypeId=component.find("carTypeList").get("v.value");
        alert(carTypeId+' Option Selected');
    },
   createRecord : function(component, event, helper) { 
       var createCarRecord=$A.get("e.force:createRecord");
       createCarRecord.setParams({"entityApiName":"Car_type__c"});
       createCarRecord.fire();
    }     

})