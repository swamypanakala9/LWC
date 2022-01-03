({
    MilkEventFire : function(cmp, event) {
        {
            console.log('Milk JS Called');        
            var appEvent1 = $A.get("e.c:TeaAppEvent");
            console.log('appEvent '+appEvent1);
            appEvent1.setParams({
                "Milk" : cmp.get("v.Milk")});
            console.log('appEvent '+appEvent1);
            console.log(JSON.stringify(appEvent1));
            appEvent1.fire();
            console.log(JSON.stringify(appEvent1));
        }        
        
    },
      
    WaterHandleEvt : function(cmp, event) {    
		 var Water  = event.getParam("Water");            
        console.log('Tea JS Called Water '+Water);        
         cmp.set("v.Water", Water);
    }
})