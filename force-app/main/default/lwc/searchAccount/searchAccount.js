import { LightningElement, track, wire } from 'lwc';
import getAccounts from '@salesforce/apex/lwcMethodsClass.getAccounts'
import getAccounts2 from '@salesforce/apex/lwcMethodsClass.getAccounts2'
export default class SearchAccount extends LightningElement {

    AccountName1 = 'A1'
    A1Result
    A2result
    @track AccountName2 = 'A2'
        //Wire function call the data always dynamically and we cannot call this 
        //method imperatevely(like onchange event handler) so we have imperative method to if you want
        //call only on perticular action happens
    @wire(getAccounts2) wiredAccounts2({ data, error }) {
        if (data) {
            console.log('wire data ' + data)
            console.log('wire data ' + JSON.stringify(data))
        }
        if (error) {
            console.log('wire error ' + JSON.stringify(error))
        }
    }
    handleA1(event) {
        this.AccountName1 = event.target.value;
        getAccounts({ name: this.AccountName1 }).then(result => {
            this.A1Result = result;
            console.log(JSON.stringify(this.A1Result))
        }).catch(error => {
            console.log(console.error())
        })

    }
    handleA2(event) {
            this.AccountName2 = event.target.value
            getAccounts({ name: this.AccountName2 }).then(result => {
                this.A2result = result
                console.log(this.A2result)
            }).catch(error => {
                console.log(console.error)
            })
        }
        // To know how to User getter method, simply define method name after get and 
        //directly call like variable name from HTML
    get ConcateValue() {
        return `First Value is : ${this.AccountName1} 2nd Value is : ${this.AccountName2}`
    }
    get dynamicClass() {
        const dummy = this.AccountName1.toLowerCase()
        return dummy == 'united' ? 'mypadred' : 'mypad'
    }
}