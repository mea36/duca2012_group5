//
//  ExerciseViewControllerX.m
//  Exercise
//
//  Created by Ryan Lin on 7/18/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExerciseViewControllerX.h"


@implementation ExerciseViewControllerX
@synthesize exerciseDescription, exerciseImage, imageLocation, exercise;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	NSLog(@"in exercise");
	if (self.imageLocation != nil) {
		NSLog(@"image is not nil");
		UIImage * myImage = [UIImage imageNamed:self.exercise.image];
		UIImageView* imageView = [[UIImageView alloc] initWithImage:myImage];
		imageView.frame = CGRectMake(0, 260, 320, 140);
		imageView.contentMode = UIViewContentModeScaleAspectFit;
		[self.view addSubview:imageView];
		[imageView release];
	}
	
	self.exerciseDescription.frame = CGRectMake(0, 0, 320, 401);
	[self.exerciseDescription setText:self.exercise.description];
	self.exerciseDescription.autoresizingMask = UIViewAutoresizingFlexibleHeight;

	
		
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[exerciseImage release];
	[exerciseDescription release];
	[imageLocation release];
	[exercise release];
    [super dealloc];
}


@end
