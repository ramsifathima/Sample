import { LightningElement, wire, track } from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';

export default class WireGetObjectInfo extends LightningElement {
    @track objectApiNameInputValue;
    objectApiName;
    @track objectInfo;
    @track showTable =false;
    fieldApiNameInputValue;
    @track fieldApiName;

    @wire(getObjectInfo, { objectApiName: '$objectApiName' })
    objectInfo;
    // For getting the object in search field
    objectNameChange(event) {
        this.objectApiNameInputValue = event.target.value;
        console.log(' this.objectApiNameInputValue'+ this.objectApiNameInputValue);
    }

    handleBtnClick() {
        this.objectApiName = this.objectApiNameInputValue;
    }

    //For getting the field values
    fieldNameChange(event) {
        this.fieldApiNameInputValue = event.target.value;
    }
    handleFieldBtnClick() {
        this.showTable = true;
        this.fieldApiName = this.fieldApiNameInputValue;
        console.log(' this.fieldApiName'+ this.fieldApiName);
    }

    //for choosing the fields
    get fieldOptions() {
        let fieldList = [];
        if (this.objectInfo) {
            if (this.objectInfo.data) {
                if (this.objectInfo.data.fields) {
                    for (var i = 0; i < Object.entries(this.objectInfo.data.fields).length; i++) {
                        fieldList.push({
                            label: Object.entries(this.objectInfo.data.fields)[i][0],
                            value: Object.entries(this.objectInfo.data.fields)[i][0]
                        });
                    }
                }
            }
        }
        return fieldList;
    }
}