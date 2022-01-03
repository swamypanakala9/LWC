import { LightningElement, track } from 'lwc';
import allTodos from '@salesforce/apex/ToDoController.allTodos'
import addTodo from '@salesforce/apex/ToDoController.addTodo'
import TodoList from '@salesforce/apex/ToDoController.TodoList'


export default class ToDoManager extends LightningElement {
    @track time = "8:15pm";
    @track greeting = "Good evening";
    @track apextodos
    @track serchKey = 'test'
    @track todoCount

    @track todos = [];
    @track todolist;
    @track columns = [
        { label: 'Todo name', fieldName: 'Name', sortable: true },
        { lable: 'CreatedDate', fieldName: 'CreatedDate', sortable: true },
        { label: 'Done', fieldName: 'done__c', sortable: true }
    ];

    connectedCallback() {
        // These menthods will call when browser load initially
        this.getTime();
        //  this.populateTodos();
        this.getTodos();
        this.getToDoList();

        setInterval(() => {
            this.getTime();
            //   this.populateTodos();
            // this.getTodos();

            //        console.log("set interval logged");
        }, 1000 * 5);


    }
    getTime() {
        const date = new Date();
        const hour = date.getHours();
        const min = date.getMinutes();

        this.time = `${this.getHour(hour)}:${this.getDoubleDigit(min)} ${this.getMidDay(hour)}`;
    }
    getHour(hour) {
        return hour === 0 ? 12 : hour > 12 ? (hour - 12) : hour;
    }
    getMidDay(hour) {
        return hour >= 12 ? "PM" : "AM";
    }
    getDoubleDigit(digit) {
        return digit < 10 ? '0' + digit : digit;
    }
    setGreeting(hour) {
        if (hour < 12) {
            this.greeting = "Good Morning";
        } else if (hour >= 12 && hour < 17) {
            this.greeting = "Good Afternoon";
        } else {
            this.greeting = "Good Evening";
        }
    }

    addTodoHandler() {
        const inputBox = this.template.querySelector("Lightning-input");
        console.log('Current Value ', inputBox.value);

        const todo = {
            todoName: inputBox.value,
            done: false
        };
        console.log('todo ' + todo)
        console.log('todo.todoName ' + todo.todoName)
        console.log('todo.done ' + todo.done)
        console.log('todo Stringyfy ' + JSON.stringify(todo))
            //console.log('todo deserialize '+JSON.deserialize(todo));
        addTodo({ Name: todo.todoName, done: todo.done })
            // addTodo({payload : {"Name" : "test","done__c" : true}})
            .then(response => {
                console.log('Item inserted succesfully')
                this.getTodos();
            })
            .catch(error => {
                console.error('Error in inserting record : ' + error)
            });
        //  this.todos.push(todo);
        inputBox.value = '';
    }
    get upcomingTasks() {
        return this.todos && this.todos.length ? this.todos.filter(todo => !todo.done__c) : [];
    }
    get completedTask() {
            return this.todos && this.todos.length ? this.todos.filter(todo => todo.done__c) : [];
        }
        /*
            populateTodos(){
                const todo = [
                    {
                    todoId:0,
                    todoName:"Fedd the Dog",
                    done:false,
                    todoDate:new Date()
                }, 
                {
                todoId:1,
                todoName:"Wash a car",
                done:false,
                todoDate:new Date()
                },
                {
                    todoId:2,
                    todoName:"Send a Email",
                    done:true,
                    todoDate:new Date()
                }
            ]
            this.todos=todo;
            } 
         */
    getTodos() {
        allTodos().then(result => {
            //  this.apextodos=result;
            // result = result.filter(todo => !todo.done__c) 
            this.todos = result;
        }).catch(error => {
            console.log(console.error())
        })
    }
    updateHandler() {
        this.getTodos();

    }
    deleteHandler() {
        this.getTodos();
    }
    getToDoList() {
        TodoList({ Serchkey: this.serchKey }).then(result => {
            this.todolist = result;
            console.log(result)

            this.todoCount = result.length
        }).catch(error => {
            console.log(console.error())
        })

    }
    searchHandler(event) {
        this.serchKey = event.target.value;
        console.log(this.serchKey)
        console.log(this.todoCount)
        this.getToDoList();
    }

}