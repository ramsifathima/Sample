import { LightningElement, track, wire } from 'lwc';
import getObjList from '@salesforce/apex/SearchObject.getObjList';
export default class CustomLookupLwc extends LightningElement {

 @track searchKeyword='';
 @track accountList=[];
 @track objectApiName='ObjectPermissions';
 @track SObjectType;
 @track isShow=false;
 @track messageResult=false;
 @track isShowResult = true;
 @track showSearchedValues = false;
 @wire(getObjList,{searchKey:'$searchKeyword'})
 retrieveAccounts ({error,data}){
     this.messageResult=false;
     if(data){
         console.log('data## ' + data.length);
         if(data.length>0 && this.isShowResult){
            this.accountList =data;
            this.showSearchedValues=true;
            this.messageResult=false;
         }
         else if(data.length == 0){
            this.accountList=[];
            this.showSearchedValues=false;
            if(this.searchKeyword != ''){
               this.messageResult=true;
            }
         }
         else if(error){
             this.SObjectType='';
             this.searchKeyword='';
             this.accountList=[];
             this.showSearchedValues=false;
             this.messageResult=true;
         }

     }
 }



handleClick(event){
  this.isShowResult = true;
  this.messageResult = false;
}


handleKeyChange(event){
  this.messageResult=false;
  this.searchKeyword = event.target.value;
}

handleParentSelection(event){        
    this.showSearchedValues = false;
    this.isShowResult = false;
    this.messageResult=false;
    //Set the parent calendar id
    this.SObjectType =  event.target.dataset.value;
    //Set the parent calendar label
    this.searchKeyword =  event.target.dataset.label;      
    console.log('SObjectType::'+this.SObjectType);    
    const selectedEvent = new CustomEvent('selected', { detail: this.SObjectType });
    //Dispatches the event.
    this.dispatchEvent(selectedEvent);    
}
handleOpenModal(event){
    this.isshow = true;
    console.log('balaji:::');
}
handleCloseModal(event){
    this.isshow = false;
}
handleSuccess(event){       
    this.isShowResult = false;
    this.messageResult=false;
    this.isshow = false;
    this.SObjectType = event.detail.id;
    console.log(event.detail.id);
    console.log('JSON OBject:'+JSON.stringify(event.detail));
    this.searchKeyword = event.detail.fields.Name.value;
    const selectedEvent = new CustomEvent('selected', { detail: this.SObjectType });
    // Dispatches the event.
    this.dispatchEvent(selectedEvent);

}
handleReset(event) {
    const inputFields = this.template.querySelectorAll(
        'lightning-input-field'
    );
    if (inputFields) {
        inputFields.forEach(field => {
            field.reset();
        });
    }
     this.isshow = false;
}
}