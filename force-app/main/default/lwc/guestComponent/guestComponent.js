import { LightningElement, track, wire } from 'lwc';
import { getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import GUEST_OBJECT from '@salesforce/schema/Guest__c';

export default class GuestComponent extends LightningElement {

    @track recordId;
    @track controllingValues = [];
    @track dependentValues = [];
    @track selectedType;
    @track selectedMealPreference;
    @track isEmpty = false;
    @track error;
    controlValues;
    totalDependentValues = [];
    @track data;


    @wire(getObjectInfo, { objectApiName: GUEST_OBJECT })
    objectInfo;

    // Picklist values based on record type
    @wire(getPicklistValuesByRecordType, { objectApiName: GUEST_OBJECT, recordTypeId: '$objectInfo.data.defaultRecordTypeId' })
    countryPicklistValues({ error, data }) {
        if (data) {
            this.error = null;
            let mealOptions = [{ label: '--None--', value: '--None--' }];
            data.picklistFieldValues.Meal_Preference__c.values.forEach(key => {
                mealOptions.push({
                    label: key.label,
                    value: key.value
                })
            });

            this.controllingValues = mealOptions;

            let typeOptions = [{ label: '--None--', value: '--None--' }];

            this.controlValues = data.picklistFieldValues.Meal_Type__c.controllerValues;

            this.totalDependentValues = data.picklistFieldValues.Meal_Type__c.values;

            this.totalDependentValues.forEach(key => {
                typeOptions.push({
                    label: key.label,
                    value: key.value
                })
            });

            this.dependentValues = typeOptions;
        } else if (error) {
            this.error = JSON.stringify(error);
        }
    }

    handleMealPreferenceChange(event) {
        // Selected Meal Preference Value
        this.selectedMealPreference = event.target.value;
        this.isEmpty = false;
        let dependValues = [];

        if (this.selectedMealPreference) {
            // if Selected Meal Preference is none returns nothing
            if (this.selectedMealPreference === '--None--') {
                this.isEmpty = true;
                dependValues = [{ label: '--None--', value: '--None--' }];
                this.selectedMealPreference = null;
                this.selectedType = null;
                return;
            }

            // filter the total dependent values based on selected meal preference value 
            this.totalDependentValues.forEach(conValues => {
                if (conValues.validFor[0] === this.controlValues[this.selectedMealPreference]) {
                    dependValues.push({
                        label: conValues.label,
                        value: conValues.value
                    })
                }
            })

            this.dependentValues = dependValues;
        }
    }

    handleMealTypeChange(event) {
        this.selectedType = event.target.value;
    }
}