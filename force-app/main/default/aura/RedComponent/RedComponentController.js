({
	RedCompAction : function(component, event, helper) {
        var message=event.getParam("AppEventVariable");
        component.set("v.eventMessage",message);
		
	}
})