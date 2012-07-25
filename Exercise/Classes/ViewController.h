//
//  ViewController.h
//  Exercise
//
//  Created by Bennett Furman on 7/22/12.
//  Copyright (c) 2012 Drexel University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TodoViewController.h"

@interface ViewController : UITableViewController {
    NSArray *menuitems;
    TodoViewController *todoView;
}

@property (nonatomic, retain) NSArray *menuitems;
@property (nonatomic, retain) TodoViewController *todoView;

@end
