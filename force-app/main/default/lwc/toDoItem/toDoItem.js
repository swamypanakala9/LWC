import { LightningElement, api } from 'lwc';
import updateTodo from '@salesforce/apex/ToDoController.updateTodo';
import deleteTodo from '@salesforce/apex/ToDoController.deleteTodo';
export default class ToDoItem extends LightningElement {

@api todoId;
@api todoName;
@api done=false;

get cssClass(){
    return this.done ? "todo completed" : "todo upcoming";
}
get iconName(){
    return this.done ? "utility:check" : "utility:add"
}
updateHandler(){
    updateTodo({done : this.done , id : this.todoId}).then(result =>{
        console.log('To do updated succesfully');
        const updateEvent = new CustomEvent('update');
        this.dispatchEvent(updateEvent);
    }).catch(error =>{
        console.log('error while updating '+error)
    })
}
deleteHandler(){
    deleteTodo({id :this.todoId}).then(result => {
        console.log('To do deleted succesfully');
        const deleteEvent = new CustomEvent('delete');
        this.dispatchEvent(deleteEvent);
    }).catch(error => {
        console.log('error while deleting '+error)
    })
}

}