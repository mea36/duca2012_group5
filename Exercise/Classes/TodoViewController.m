//
//  TodoViewController.m
//  Exercise
//
//  Created by Bennett Furman on 7/24/12.
//  Copyright (c) 2012 Drexel University. All rights reserved.
//

#import "TodoViewController.h"

//@interface TodoViewController ()

//@end

@implementation TodoViewController

@synthesize todoText,exerciseName,todoValue,todoSetAmount,todoUnit,todoButton,todoStatus,todo;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction) updateStatus:(id) sender {
	if(self.todo.status == 0) {
		[self.todoButton setTitle:@"Mark As In Progress" forState:UIControlStateNormal];
		[self.todoButton setTitle:@"Mark As In Progress" forState:UIControlStateHighlighted];
		[self.todoStatus setText:@"Complete"];
		[self.todo updateStatus:1];
	} else {
		[self.todoButton setTitle:@"Mark As Complete" forState:UIControlStateNormal];
		[self.todoButton setTitle:@"Mark As Complete" forState:UIControlStateHighlighted];
		[self.todoStatus setText:@"In Progress"];
		[self.todo updateStatus:0];
	}
}

- (IBAction) updatePriority:(id)sender {
	//int priority = [self.todoPriority selectedSegmentIndex];
	//[self.todo updatePriority:(2-priority+1)];
}

- (IBAction) updateText:(id) sender {
	self.todo.text = self.todoText.text;
    NSLog(@"setting text = %@", self.todo.text);
}

- (IBAction) updateValue:(id)sender {
    self.todo.measurement = self.todoValue.text;
    NSLog(@"setting measurment = %@", self.todo.measurement);
}
- (IBAction) updateUnit:(id)sender {
   
    switch (self.todoUnit.selectedSegmentIndex) {
        case 0:
            self.todo.units = @"Reps";
            break;
        case 1:
             self.todo.units = @"Time";
            break;
        case 2:
            self.todo.units = @"Distance";
        default:
            break;
    }

}
- (IBAction) updateSet:(id)sender {
    self.todo.setval = self.todoSetAmount.text;
    NSLog(@"setting setval = %@", self.todo.setval);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
