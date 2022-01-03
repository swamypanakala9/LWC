({
	fireEvent : function(component, event, helper) {
		//get the event using event name.
        var appEvent=$A.get("e.c:ChildToParent");
        appEvent.setParams({"AppEventVariable":component.get("v.GCV")});
        appEvent.fire();
	}
})