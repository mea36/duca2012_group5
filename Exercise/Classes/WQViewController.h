//
//  WQViewController.h
//  Exercise
//
//  Created by Bennett Furman on 7/24/12.
//  Copyright (c) 2012 Drexel University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "TodoViewController.h" //Should I?

@interface WQViewController : UITableViewController {
    TodoViewController *todoView;
    //IBOutlet UITableView* tableView;
    //IBOutlet UIView* TodoViewController; //Should I?
}

@property(nonatomic,retain) TodoViewController *todoView;
//@property (nonatomic, retain) UITableView* tableView;
- (void)setTodoView:(TodoViewController *)newTodo;

@end
