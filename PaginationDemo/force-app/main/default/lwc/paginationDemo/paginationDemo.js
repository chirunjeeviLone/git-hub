import { LightningElement, wire } from 'lwc';
import getContactList from '@salesforce/apex/DataController.getContactList'
export default class PaginationDemo extends LightningElement {
totalContacts
@wire(getContactList)
wiredContact({error, data}){

    if(data)
    {
        this.totalContacts=data
        console.log(this.totalContacts)
    }
    if(error)
    {
    console.error(error)

    }

}
}