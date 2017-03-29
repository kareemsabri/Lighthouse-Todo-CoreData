//
//  TaskTableViewCell.h
//  Todo-CoreData
//
//  Created by Kareem Sabri on 2017-03-29.
//  Copyright © 2017 Kareem Sabri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskTableViewCell : UITableViewCell
@property (strong) id task;
@property (weak, nonatomic) UILabel *taskNameLabel;
@property (weak, nonatomic) UISwitch *completedSwitch;
-(void)setInfo;
@end
