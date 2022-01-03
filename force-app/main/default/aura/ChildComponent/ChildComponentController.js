({
	handleKeyUp : function(component, event, helper) {   //5 th step get value from event and set to message and fire
        var cmpEvent=component.getEvent("SE");
        cmpEvent.setParams({"message":component.get("v.ChildToParent")});
        cmpEvent.fire();
		
	}
})