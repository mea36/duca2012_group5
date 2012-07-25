//
//  ExerciseAppDelegate.h
//  Exercise
//
//  Created by Ryan Lin on 7/17/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "TodoViewController.h"

@interface ExerciseAppDelegate : NSObject <UIApplicationDelegate> {
    
    IBOutlet UIWindow *window;
    IBOutlet UINavigationController *navigationController;
	
	NSMutableArray *exercise;
    NSMutableArray *todos;
    //NSString *database;
    NSString *exerciseName;
}

//-(Todo *)addTodo;

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navigationController;
@property (nonatomic, retain) NSMutableArray *exercises;
@property (nonatomic, retain) NSMutableArray *todos;
@property (nonatomic, retain) NSString *database;
@property (nonatomic, retain) NSString *exerciseName;

-(void)removeTodo:(Todo *)todo;
-(Todo *)addTodo;

@end

