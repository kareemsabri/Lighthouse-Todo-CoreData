//
//  TasksViewController.m
//  Todo-CoreData
//
//  Created by Kareem Sabri on 2017-03-29.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "TasksViewController.h"
#import "Task+CoreDataProperties.h"
#import "AppDelegate.h"

@interface TasksViewController ()
@property NSMutableArray<Task*>* tasks; //@todo: change this to be array of <Task*> once you create Task model entity/class
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation TasksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getContext];
    self.tasks = [self.list.tasks.allObjects mutableCopy];
}


-(void)getContext {
    AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    self.context = delegate.persistentContainer.viewContext;
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    Task *task = [NSEntityDescription insertNewObjectForEntityForName:@"Task" inManagedObjectContext:self.context];
    task.name = textField.text;
    NSError* err = nil;
    [self.list addTasksObject:task];
    [self.context save:&err];
    [self.tasks addObject:task];
    [self.tableView reloadData];
    textField.text = nil;
    [textField resignFirstResponder];
    return YES;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tasks count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"taskCell" forIndexPath:indexPath];
    cell.textLabel.text = self.tasks[indexPath.row].name;
    //stretch goal: make this cell a TaskTableViewCell
    //and set cell switch to task completed status, let users toggle the state
    return cell;
}

@end
