//
//  TodoCell.h
//  Exercise
//
//  Created by Bennett Furman on 7/24/12.
//  Copyright (c) 2012 Drexel University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"

@interface TodoCell : UITableViewCell {
    //Todo *todo;//Should this be the "Workout" object?
    UILabel *todoMeasurement;
    UILabel *todoData;
    Todo        *todo;
    UILabel     *todoTextLabel;
    UILabel     *todoPriorityLabel;
    UIImageView *todoPriorityImageView;
}

@property (nonatomic, retain) UILabel     *todoTextLabel;
@property (nonatomic, retain) UILabel     *todoPriorityLabel;
@property (nonatomic, retain) UIImageView *todoPriorityImageView;
@property (nonatomic, retain) UILabel *todoMeasurement;
@property (nonatomic, retain) UILabel *todoData;

- (Todo *)todo;
- (void)setTodo:(Todo *)newTodo; //Is this SQL stuff?

@end
