//
//  TodoCell.h
//  Exercise
//
//  Created by Bennett Furman on 7/24/12.
//  Copyright (c) 2012 Drexel University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TodoCell : UITableViewCell {
    //Todo *todo;//Should this be the "Workout" object?
    UILabel *todoMeasurement;
    UILabel *todoData;
}

@property (nonatomic, retain) UILabel *todoMeasurement;
@property (nonatomic, retain) UILabel *todoData;

//- (Todo *)todo;
//- (void)setTodo:(Todo *)newTodo; //Is this SQL stuff?

@end
