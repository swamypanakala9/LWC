({
    doInit : function(component, event, helper) {
        try
        {
            console.log('In Controller')
            console.log(component.get('v.Int1'))
            console.log(component.set('v.Int1','35'))
            console.log(component.get('v.Int1'))
            
            var date1=new Date()
            console.log('date :'+date1)
            for (var i = 0; i < 5; i++) {
                console.log("The number is " + i);
            }
            var person = {fname:"John", lname:"Doe", age:25};        
            var text = "";
            // var x;
            for (x in person) {
                console.log(x);
                console.log(person[x]);
            }
            var cars = ["BMW", "Volvo", "Mini"];
            var text = "";        
            for ( x of cars) {
                console.log(x);
            } 
        }
        catch(err)
        {
            console.log(err);  
            console.log(err.message);  
        }
          var cars = ["BMW", "Volvo", "Mini"];
            var text = "";        
            for (var y of cars) {
                console.log(y);
            } 
        
    }
})