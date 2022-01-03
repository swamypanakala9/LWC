({
	MilkHandleEvt : function(cmp, event) {      
		var Milk  = event.getParam("Milk");        
         console.log('Tea JS Called Milk '+Milk);       
         cmp.set("v.MilkQty", Milk);
        
    },
    
    WaterHandleEvt : function(cmp, event) {    
		 var Water  = event.getParam("Water");            
        console.log('Tea JS Called Water '+Water);        
         cmp.set("v.WaterQty", Water);
    },
    handleClick : function (cmp, event, helper) {
        var total=(parseFloat(cmp.get("v.MilkQty"))+parseFloat(cmp.get("v.WaterQty"))+parseFloat(cmp.get("v.SugarQty")));
        cmp.set("v.TotalQty",total);
    }

})