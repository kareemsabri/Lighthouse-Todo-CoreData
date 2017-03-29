//
//  TasksViewController.m
//  Todo-CoreData
//
//  Created by Kareem Sabri on 2017-03-29.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "TasksViewController.h"

@interface TasksViewController ()
@property NSArray *tasks; //@todo: change this to be array of <Task*> once you create Task model entity/class
@end

@implementation TasksViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //@todo: fetch tasks for list
    //see https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreData/FetchingObjects.html
    //specifically section on Filtering Results
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    //@todo: create task with name from textField value associated with current list
    //see https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreData/CreatingObjects.html
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
    //set cell name to task name
    //stretch goal: make this cell a TaskTableViewCell
    //and set cell switch to task completed status, let users toggle the state
    return cell;
}

@end
