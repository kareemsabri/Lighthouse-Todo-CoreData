//
//  List+CoreDataProperties.m
//  Todo-CoreData
//
//  Created by Kareem Sabri on 2017-03-30.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "List+CoreDataProperties.h"

@implementation List (CoreDataProperties)

+ (NSFetchRequest<List *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"List"];
}

@dynamic name;
@dynamic tasks;

@end
