({
	parentComponentEvent : function(component, event, helper) {  //7 th step get value from event message
        var FromChild =event.getParam("message");
        //Set the handler attributes based on event data
        component.set("v.ChildVariable",FromChild);
		
	}
})