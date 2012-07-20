//
//  RootViewController.h
//  Exercise
//
//  Created by Ryan Lin on 7/17/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ExerciseViewControllerX.h"

@interface RootViewController : UITableViewController {
	ExerciseViewControllerX *exerciseView;
}

@property(nonatomic,retain) ExerciseViewControllerX *exerciseView;

@end
