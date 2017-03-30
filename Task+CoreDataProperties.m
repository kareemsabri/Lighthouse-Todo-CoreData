//
//  Task+CoreDataProperties.m
//  Todo-CoreData
//
//  Created by Kareem Sabri on 2017-03-30.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Task+CoreDataProperties.h"

@implementation Task (CoreDataProperties)

+ (NSFetchRequest<Task *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Task"];
}

@dynamic name;
@dynamic completed;
@dynamic list;

@end
