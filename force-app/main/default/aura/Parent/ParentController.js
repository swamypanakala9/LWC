({
	
    HandleEvt: function(cmp, event) {
		var message  = event.getParam("message");
        var message2  = event.getParam("message2");
        console.log('message '+message)  
         console.log('message2 '+message2)  
        cmp.set("v.messageFromEvent", message);
        cmp.set("v.ChildMessage", message2);
        var numEventsHandled = parseInt(cmp.get("v.numEvents")) + 1;
        cmp.set("v.numEvents", numEventsHandled);
	}
})