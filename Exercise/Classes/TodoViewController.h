//
//  TodoViewController.h
//  Exercise
//
//  Created by Bennett Furman on 7/24/12.
//  Copyright (c) 2012 Drexel University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"

@interface TodoViewController : UIViewController {
    IBOutlet UITextField *exerciseName;
    IBOutlet UITextField *todoValue;
    IBOutlet UITextField *todoSetAmount;    
    IBOutlet UISegmentedControl *todoUnit;
    IBOutlet UIButton *todoButton;
    IBOutlet UITextField        *todoText;
    IBOutlet UILabel            *todoStatus;
    Todo *todo;
}

@property(nonatomic,retain) IBOutlet UITextField        *todoText;
@property(nonatomic,retain) IBOutlet UITextField        *exerciseName;
@property(nonatomic,retain) IBOutlet UITextField        *todoValue;
@property(nonatomic,retain) IBOutlet UITextField        *todoSetAmount;
@property(nonatomic,retain) IBOutlet UISegmentedControl *todoUnit;
@property(nonatomic,retain) IBOutlet UIButton           *todoButton;
@property(nonatomic,retain) IBOutlet UILabel            *todoStatus;
@property(nonatomic,retain) Todo						*todo;

- (IBAction) updateStatus:(id) sender;
//- (IBAction) updatePriority:(id) sender;
- (IBAction) updateText:(id) sender;
- (IBAction) updateValue:(id)sender;
- (IBAction) updateUnit:(id)sender;
- (IBAction) updateSet:(id)sender;

/*
@property(nonatomic,retain) IBOutlet
@property(nonatomic,retain) IBOutlet
@property(nonatomic,retain) IBOutlet
//@property(nonatomic,retain) Todo *todo;
*/
@end
