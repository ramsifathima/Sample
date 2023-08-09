import { LightningElement,track,api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import {getObjectInfo} from 'lightning/uiObjectInfoApi'
import getObjList from '@salesforce/apex/SearchObject.getObjList';
export default class Abc extends NavigationMixin(LightningElement){
    @track objectApiNameInputValue = '';
    @api getObjectDetails;

    @track objValue;
    @track SelectedAccountId;
    @api searchPlaceholder = "Search";

    filters={
        searchKey:'',
    }

    //CSS
    boxClass = 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click slds-has-focus';
    inputClass = '';

    connectedCallback(){
    console.log('user data');
    getObjList()
    .then(result => {
    console.log('user data', result);
    for(var i=0;i<result.length;i++){
        this.objValue = JSON.stringify(result[i].SobjectType);
        console.log(''+this.objValue);
    }

    })
    .catch(error => {
    console.log('user error', error);
    });
    }
    navigateToObjectFieldPage() {
        this.getObjectDetails = this.objectApiNameInputValue;
    }
    objectNameChange(event) {
        if( event.target.name === 'objectList'){
            this.objectApiNameInputValue = event.target.value;
        }
    }

    objectNameChange(event){
        console.log(event.target.value)
        this.filters = {...this.filters, "searchKey":event.target.value} 
        
    }
    //Handleclick for onclick for Object choosing field
    handleClick() {
        this.searchTerm = '';
        this.inputClass = 'slds-has-focus';
        this.boxClass = 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click slds-has-focus slds-is-open';
    }
    // for custom lookup lwc field
    handleSelected(event){
        console.log(event.detail);
        this.SelectedAccountId =event.detail;
    }
}