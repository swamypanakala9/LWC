({
    WaterEventFire : function(cmp, event) {
        {
            console.log('Water JS Called');        
            var appEvent1 = $A.get("e.c:TeaAppWater");
            console.log('appEvent '+appEvent1);
            appEvent1.setParams({
                "Water" : cmp.get("v.Water")});
            console.log('appEvent '+appEvent1);
            console.log(JSON.stringify(appEvent1));
            appEvent1.fire();
            console.log(JSON.stringify(appEvent1));
        }        
        
    },
    
    MilkHandleEvt : function(cmp, event) {      
		var Milk  = event.getParam("Milk");        
         console.log('Tea JS Called Milk '+Milk);       
         cmp.set("v.Milk", Milk);
        
    }
})