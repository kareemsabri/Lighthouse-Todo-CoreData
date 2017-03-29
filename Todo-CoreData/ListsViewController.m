//
//  ListsViewController.m
//  Todo-CoreData
//
//  Created by Kareem Sabri on 2017-03-29.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "ListsViewController.h"
#import "TasksViewController.h"

@interface ListsViewController ()
@property (weak, nonatomic) IBOutlet UITextField *listTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong) NSArray* lists; //@todo: this should be of type <List*> once you create a List class
//see https://useyourloaf.com/blog/core-data-code-generation/
@end

@implementation ListsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //@todo: initialize lists
    //@todo: fetch lists and reload table data
    //see https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreData/FetchingObjects.html
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier  isEqual: @"tasksViewController"]) {
        TasksViewController *tasksViewController = [segue destinationViewController];
        tasksViewController.list = sender;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    //@todo: take value of text field nad create a new list and save it
    //see https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreData/CreatingObjects.html
    return YES;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.lists count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"listCell" forIndexPath:indexPath];
    //set cell's title to name of list at indexPath.row
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    id list = self.lists[indexPath.row];
    [self performSegueWithIdentifier:@"tasksViewController" sender:list];
}


@end
