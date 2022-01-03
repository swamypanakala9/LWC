import { LightningElement, api } from 'lwc';

export default class ChildLwcComponent extends LightningElement {

    @api childValue = 'Default'
    @api client
    @api project
    @api duration
    Feedback

    customEventhandler(event) {
        this.Feedback = event.target.value
        const storeEvent = new CustomEvent('myevent', { detail: this.Feedback })
        this.dispatchEvent(storeEvent)
        console.log('Child Feedback : ' + this.Feedback);
    }

}