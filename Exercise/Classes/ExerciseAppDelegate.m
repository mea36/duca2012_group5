//
//  ExerciseAppDelegate.m
//  Exercise
//
//  Created by Ryan Lin on 7/17/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "ExerciseAppDelegate.h"
#import "RootViewController.h"
#import "Exercise.h"


@implementation ExerciseAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize exercises;


#pragma mark -
#pragma mark Application lifecycle
/*
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    
    // Set the navigation controller as the window's root view controller and display.
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];

    return YES;
}
*/

- (void)applicationDidFinishLaunching:(UIApplication *)application {

	Exercise *core	=[[Exercise alloc] initWithName:@"Core" description:@"Crunch:\nStep:1 Lie with you back on the floor and your feet flat, knees bent.\nStep:2 Lift your upper body as high as possible withough your legs coming off the ground then slowly lower back to starting position.\nREPS:Do 3 sets of 10 repitetions can increase repetetions if 10 isnt enough also can increase sets."];
	Exercise *upperbody	=[[Exercise alloc] initWithName:@"Upper Body" description:@"Standing Dumbbell Curl:Step:1 Take two dumbbells of equal wieght that you will be able to lift and do 3 sets of 10 repitetions.\nStep:2 Hold the two dumbbells at your sides with your palms facing away from you.\nStep:3 Curl the dumbbells up towards your shoulders.Step:4 Lower the dumbbells slowly and back to the starting position you can increase your wieght after two weeks."];
	Exercise *legs	=[[Exercise alloc] initWithName:@"Legs" description:@"Lunge:\nStep:1 Stand up stright with your arms on your hips.\nStep:2 Step forward with one leg and lower your body untill you knee is 90 degrees from the floor,\nReturn to the standing position as quickly as possible and repeat the same step but use your other leg and do 3 set of 10 repitetions you can add on more repetetions if 10 is not enough or add on more sets. "];
	Exercise *arms =[[Exercise alloc] initWithName:@"Arms" description:@"blahblahblah"];
	
	self.exercises = [[NSMutableArray alloc] initWithObjects:core,upperbody,legs,arms,nil];
					  
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

