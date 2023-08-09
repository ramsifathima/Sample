import { LightningElement } from 'lwc';
import getList from '@salesforce/apex/ContactController.getContactList';
export default class ApexImperativeMethod extends LightningElement {
    contacts;
    error;

    handleload(){
        getList()
        .then((result) =>{
            this.contacts = result;
            this.error = undefined;
        })
        .then((error) =>{
            this.error = error;
            this.contacts = undefined;
        });
    }       
}