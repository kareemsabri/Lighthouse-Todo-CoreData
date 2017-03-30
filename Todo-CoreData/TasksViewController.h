//
//  TasksViewController.h
//  Todo-CoreData
//
//  Created by Kareem Sabri on 2017-03-29.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "List+CoreDataProperties.h"

@interface TasksViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>
@property (strong) NSManagedObjectContext *context;
@property (strong) List* list;
@end
