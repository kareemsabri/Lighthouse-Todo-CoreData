//
//  Task+CoreDataProperties.h
//  Todo-CoreData
//
//  Created by Kareem Sabri on 2017-03-30.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Task+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Task (CoreDataProperties)

+ (NSFetchRequest<Task *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nonatomic) BOOL completed;
@property (nullable, nonatomic, retain) List *list;

@end

NS_ASSUME_NONNULL_END
