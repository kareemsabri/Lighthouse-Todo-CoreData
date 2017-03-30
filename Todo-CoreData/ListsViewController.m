//
//  ListsViewController.m
//  Todo-CoreData
//
//  Created by Kareem Sabri on 2017-03-29.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import "ListsViewController.h"
#import "TasksViewController.h"
#import "List+CoreDataClass.h"
#import "AppDelegate.h"
#import <CoreData/CoreData.h>

@interface ListsViewController ()
@property (strong) NSManagedObjectContext *context;
@property (weak, nonatomic) IBOutlet UITextField *listTextField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong) NSMutableArray<List*>* lists; //@todo: this should be of type <List*> once you create a List class
//see https://useyourloaf.com/blog/core-data-code-generation/
@end

@implementation ListsViewController

-(void)getContext {
    AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    self.context = delegate.persistentContainer.viewContext;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self getContext];
    
    NSFetchRequest<List*> *request = [List fetchRequest];
    NSError *error = nil;
    NSArray *results = [self.context executeFetchRequest:request error:&error];
    if (!results) {
        NSLog(@"Error fetching List objects: %@\n%@", [error localizedDescription], [error userInfo]);
        abort();
    }
    
    self.lists = [results mutableCopy];
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
    //@todo: take value of text field and create a new list and save it
    List *list = [NSEntityDescription insertNewObjectForEntityForName:@"List" inManagedObjectContext:self.context];
    list.name = textField.text;
    NSError* err = nil;
    [self.context save:&err];
    [self.lists addObject:list];
    [self.tableView reloadData];
    textField.text = nil;
    [textField resignFirstResponder];
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
    List *list = self.lists[indexPath.row];    cell.textLabel.text = [NSString stringWithFormat:@"%@, (%d)",
     list.name, [list.tasks count]];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    List* list = self.lists[indexPath.row];
    [self performSegueWithIdentifier:@"tasksViewController" sender:list];
}


@end
