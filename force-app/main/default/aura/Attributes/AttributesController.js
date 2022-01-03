({
	add : function(component) {
        var addValue=component.get("v.num1")+component.get("v.num2");
        component.set("v.sum",addValue);
		
	}
})