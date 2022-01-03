({
    handleShowActiveSectionName: function (cmp, event, helper) {
        alert(cmp.find("accordion").get('v.activeSectionName'));
    },
    handleSetActiveSectionC: function (cmp) {
        cmp.find("accordion").set('v.activeSectionName', 'C');
    }
}); 

({
    handleLikeButtonClick : function (cmp) {
        cmp.set('v.liked', !cmp.get('v.liked'));
    },
    handleAnswerButtonClick: function (cmp) {
        cmp.set('v.answered', !cmp.get('v.answered'));
    }
});
({
    handleChange: function (cmp, event) {
        // This will contain an array of the "value" attribute of the selected options
        var selectedOptionValue = event.getParam("value");
        //  alert("Option selected with value: '" + selectedOptionValue.toString() + "'");
    }
});