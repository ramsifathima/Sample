import { api, LightningElement } from 'lwc';


export default class GetterSetterTable extends LightningElement {
    objectApiNameInputValue ;

    @api
    get detail(){
        return  this.objectApiNameInputValue
    }
    set detail(data){
        let newdata = data.objectApiName
        this.objectApiNameInputValue = {...data, objectApiName:newdata}
    }

}