import { LightningElement, api } from 'lwc';

export default class ParentLwcComponent extends LightningElement {
    sampledata = [{
            Project: "Scada",
            Client: "Titan",
            duration: "2017-2019 "

        },
        {
            Project: "HMI",
            Client: "Biocon",
            duration: "2019 - 2020"
        },
        {
            Project: "OCE Sales",
            Client: "AstraZeneca",
            duration: "2020 - 2021"
        }
    ]
    parentValue = 'Value pass from Parent to child'
    childFeedback

    handleChildResponse(event) {
        console.log('event.detail' + JSON.stringify(event))
        this.childFeedback = event.detail;
    }

}