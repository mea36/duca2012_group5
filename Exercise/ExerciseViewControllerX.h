//
//  ExerciseViewControllerX.h
//  Exercise
//
//  Created by Ryan Lin on 7/18/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Exercise.h"

@interface ExerciseViewControllerX : UIViewController {
	IBOutlet UITextView *exerciseDescription;
	IBOutlet UIImageView* exerciseImage;
	NSString* imageLocation;
	Exercise* exercise;
}

@property(nonatomic,retain) IBOutlet UITextView *exerciseDescription;
@property(nonatomic,retain) IBOutlet UIImageView *exerciseImage;
@property(nonatomic, retain) NSString* imageLocation;
@property(nonatomic, retain) Exercise* exercise;

@end
