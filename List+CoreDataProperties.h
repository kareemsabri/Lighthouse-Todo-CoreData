//
//  List+CoreDataProperties.h
//  Todo-CoreData
//
//  Created by Kareem Sabri on 2017-03-30.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "List+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface List (CoreDataProperties)

+ (NSFetchRequest<List *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Task *> *tasks;

@end

@interface List (CoreDataGeneratedAccessors)

- (void)addTasksObject:(Task *)value;
- (void)removeTasksObject:(Task *)value;
- (void)addTasks:(NSSet<Task *> *)values;
- (void)removeTasks:(NSSet<Task *> *)values;

@end

NS_ASSUME_NONNULL_END
