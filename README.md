CoreData Interactive Lecture


Your goals:


Create a CoreData ToDo List App

You have:

- Skeleton code for a Todo App
- a ListsViewController -> this is a table view to show Lists 
- a TasksViewController -> this is a table view to show tasks in a List
- a List CoreData Entity


You need to:

- a Task CoreData Entity
- generate NSManagedObject subclasses for List and Task, with appropriate properties
- import those classes into the relevant ViewControllers and modify them accordingly
- create a relationship between List and Tasks -> a List has many Tasks, a Task belongs to a List
- fetch Lists on the ListsViewController and display them in the table
- add a new List on the ListsViewController
- fetch Tasks for a List in the TasksViewController and display them in the table
- add a new Task on the TasksViewController
- stretch goal: use the TaskTableViewCell and add a UISwitch to allow the user to set a Task to "complete" -> this state should be persisted on your Task model
