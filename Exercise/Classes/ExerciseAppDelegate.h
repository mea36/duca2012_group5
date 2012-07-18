//
//  ExerciseAppDelegate.h
//  Exercise
//
//  Created by Ryan Lin on 7/17/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExerciseAppDelegate : NSObject <UIApplicationDelegate> {
    
    IBOutlet UIWindow *window;
    IBOutlet UINavigationController *navigationController;
	
	NSMutableArray *exercise;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navigationController;
@property (nonatomic, retain) NSMutableArray *exercises;

@end

