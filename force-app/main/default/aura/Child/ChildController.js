({
	EventFire : function(cmp, event) {
        var cmpEvent  = cmp.getEvent("Event1");
        cmpEvent.setParams({
            "message" : "A component event fired me. " +
            "It all happened so fast. Now, I'm here!","message2" : cmp.get("v.v1") });
       console.log(JSON.stringify(cmpEvent));       
        cmpEvent.fire();
        console.log('inside childController '+cmpEvent)
        console.log(JSON.stringify(cmpEvent));
	}
})