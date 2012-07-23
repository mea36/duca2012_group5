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

	Exercise *abs	=[[Exercise alloc] initWithName:@"Abs:Crunches" description:@"Step:1 Lie with you back on the floor and your feet flat, knees bent.\nStep:2 Lift your upper body as high as possible withough your legs coming off the ground then slowly lower back to starting position.\nREPS:Do 3 sets of 10 repitetions can increase repetetions if 10 isnt enough also can increase sets."];
	Exercise *abs2	=[[Exercise alloc] initWithName:@"Abs/Back:Planking" description:@"Step: 1 Lay face down on the ground and with your forearms flat on the ground.\nStep: 2 Now push your self up with you forearms on the ground.\nStep: 3 Tilt your pelvis down to prevent your rear from sticking up.\nStep: 4 Hold this position for 20-30 seconds\nReps: 3 sets of 10 you can add on more Reps or weight to increase difficulty."];
	Exercise *abs3	=[[Exercise alloc] initWithName:@"Abs:Bent-Knee Hip Raise" description:@"Step: 1 Lay flat on the ground with your arms at your sides and your palms flat on the ground./nStep: 2 Now bend your knees at about a 75 degree angle and lift your feet off the floor by around 2 inches.\nStep: 3 Using your lower abs bring your knees in towards you while you maintain the 7 degree angle you have your legs in./nReps: 3 sets of 10 you can add on more Reps or weight to increase difficulty."];
	Exercise *biceps =[[Exercise alloc] initWithName:@"Biceps:Standing Dumbbell Curl" description:@"Step:1 Take two dumbbells of equal weight that you will be able to lift with medium resistance.\nStep:2 Hold the two dumbbells at your sides with your palms facing away from you.\nStep:3 Curl the dumbbells up towards your shoulders.\n
	Exercise *back =[[Exercise alloc] initWithName:@"Back" description:@"Chinup:\nStep:1 Using a underhand grip hang on a bar with you arms alinged with your shoulders with your legs crossed and slighlty bent.\nStep:2 Pull yourself up as high as possible(Try to get chin over bar if possible.)\nStep:3 Hold for one second then slowly lower yourself back down to starting position.\nReps: Do 3 sets of 10 you can increase set and repitetions to increase difficulty."];
	Exercise *cardio =[[Exercise alloc] initWithName:@"Cardio" description:@"There are different ways to help increase your cardio here are some of them.\n1.Cycling.\n2.Jump Rope.\n3.Rowing.\n4.Running.\n5.Swimming."];				  
	self.exercises = [[NSMutableArray alloc] initWithObjects:abs,abs2,abs3,biceps,back,cardio,nil];
					  
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

