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
@synthesize todos;

/*- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
        UIView *myContentView = self.contentView;
        
        self.todoMeasurement = [self newLabelWithPrimaryColor:[UIColor blackColor]
                                              selectedColor:[UIColor whiteColor] fontSize:14.0 bold:YES];
        self.todoMeasurement.textAllignment = UITextAlignmentLeft;
        [myContentView addSubview:self.todoTextLabel];
        [self.todoMeasurement release];
        
        self.todoData = [self newLabelWithPrimaryColor:[UIColor blackColor]
                                              selectedColor:[UIColor whiteColor] fontSize:10.0 bold:YES];
        self.todoData.textAllignment = UITextAlignmentRight;
        [myContentView addSubview:self.todoData];
        [self.todoData release];
        
//        [myContentView bringSubviewToFront:self.todoPriorityImageView]
    }
    return self
}*/


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

	
	Exercise *abs	=[[Exercise alloc] initWithName:@"Abs:Bent-Knee Hip Raise" description:@"Step.1: Lie flat on the ground with your arms at your sides and your palms flat on the ground.\nStep.2: Now bend your knees at about a 75 degree angle and lift your feet off the floor by around 2 inches.\nStep.3: Using your lower abs bring your knees in towards you while you maintain the 75 degree angle you have your legs in.\nReps: Do 3 sets of 10 you can add on more reps or sets to increase difficulty."];
	
	Exercise *abs2	=[[Exercise alloc] initWithName:@"Abs:Crunches" description:@"Step.1: Lie with you back on the floor and your feet flat, knees bent.\nStep.2: Lift your upper body as high as possible without your legs coming off the ground then slowly lower yourself back to the starting position.\nReps: Do 3 sets of 10 you can add on sets and reps to increase difficulty."];
	
	Exercise *abs3	=[[Exercise alloc] initWithName:@"Abs/Back:Planking" description:@"Step.1: Lie face down on the ground and with your forearms flat on the ground.\nStep.2: Now push your self up with you forearms on the ground.\nStep.3: Tilt your pelvis down to prevent your rear from sticking up.\nStep.4: Hold this position for 20-30 seconds\nReps: Do 3 sets of 10 you can add on more sets or time to increase difficulty."];
	
	Exercise *abs4  =[[Exercise alloc] initWithName:@"Abs:Reverse Crunch Guide" description:@"Step.1: Lie down on the floor with your legs fully extended and arms at your sides with your palms on the floor your are will stay like this the whole time.\nStep.2: Raise your legs so that they perpendicular to the floor and  your feet should be together.\nStep.3: Now move your legs towards your torso as you roll your pelvis backwards and raise your hips off the floor then move you legs back to step 2 and repeat.\nReps: Do 3 sets of 10 and you can add on the amount of set and reps to increase difficulty."];
	
	Exercise *back  =[[Exercise alloc] initWithName:@"Back:Chinup" description:@"Step.1: Using a underhand grip hang on a bar with you arms alinged with your shoulders and have your legs crossed and slighlty bent.\nStep.2: Pull yourself up as high as possible(Try to get your chin over bar if possible.)\nStep.3: Hold for one second then slowly lower yourself back down to starting position and repeat.\nReps: Do 3 sets of 10 you can increase sets and reps to increase difficulty."];
	
	Exercise *back2 =[[Exercise alloc] initWithName:@"Back:Hug Knees To Chest" description:@"Step.1: Lie down on your back and pull both knees up to your chest.\nStep.2: Hold your arms under the knees, not over.\nStep.3: Slowly pull your knees towards your shoulders.\nStep.4: Hold this position for 20-30 seconds.\nReps: Do 3 sets of 20-30 seconds you can add on set or time to increase difficulty."]; 
	
	Exercise *biceps =[[Exercise alloc] initWithName:@"Biceps:Hammer Curls" description:@"Step.1: Get two dumbbells of equal weight that give you some resistance but not too much that you have to lift with a lot of strength.\nStep.2: Stand up straight and with the dumbbells in each arm with your palms facing your sides.\nStep.3: Now lift the two dumbbells while keeping your hands in the same position.\nStep.4: Slowly lower your arms back to the starting position and repeat.\nReps: Do 3 sets of 10 you can add on more reps, sets or weight to increase difficulty."];
	
	Exercise *biceps2 =[[Exercise alloc] initWithName:@"Biceps:Standing Dumbbell Curl" description:@"Step.1: Take two dumbbells of equal weight that you will be able to lift with medium resistance.\nStep.2: Hold the two dumbbells at your sides with your palms facing away from you.\nStep.3: Curl the dumbbells up towards your shoulders.\nStep.4: Lower the dumbbells slowly and back to the starting position.\nReps: Do 3 sets of 10 you can add on more reps or weight to increase difficulty."];
	
	Exercise *cardio =[[Exercise alloc] initWithName:@"Cardio" description:@"Here are some different activitys to help increase your cardio.\n1. Boxing/Kick Boxing.\n2. Cycling.\n3. Jump Rope.\n4. Rowing.\n5. Swimming.\n6. Step Aerobics.\n7. Walking/Jogging/Running."];				  
	
	Exercise *neck =[[Exercise alloc] initWithName:@"Neck:Chin To Chest" description:@"Step.1: Get into a seated position on the floor.\nStep.2: Place your hands behind your head with your fingers interlocked and have your elbows pointing straight.\nStep.3: Slowly pull your head down to your chest and hold for 20-30 seconds.\nReps: Do 3 sets of 10 you can add on more sets or time to increase difficulty."];
	
	Exercise *neck2 =[[Exercise alloc] initWithName:@"Neck:Side Neck Stretch" description:@"Step.1: Start with your shoulders relaxed.\nStep.2: Gently tilt your head towards your shoulder.\nStep.3: Assist strech with a gentle pull on the side of the head.\nReps: Do 3 sets of 20-30 seconds."];
	
	Exercise *legs =[[Exercise alloc] initWithName:@"Legs:Bodyweight Squats" description:@"Step.1: Stand with your feet shoulder length apart and have your toes facing forward and your hands behind your head.\nStep.2: Lower yourself to the ground as far as you can without touching the ground and without having your heels come off the ground.\nStep.3: Lift yourself back up to starting position and repeat.\nReps: Do 3 sets of 10 you can add on more sets or reps to increase difficulty."];
	
	Exercise *legs2 =[[Exercise alloc] initWithName:@"Legs:Lunge" description:@"Step.1: Stand up straight with your hands on your hips.\nStep.2: Step forward with one leg and lower your body until your leg is 90 degrees from the floor\nStep.3: Return to the standing position as quickly as possible and repeat the same step but use your other leg.\nReps: Do 3 set of 10 reps you can add on more sets or reps to increase diffculty."];
	
	Exercise *legs3 =[[Exercise alloc] initWithName:@"Legs:Rocket Jump" description:@"Step.1: Begin in a relaxed stance with your feet at shoulder legnth apart and hold your arms close to your body.\nStep.2: Squat down halfway and jump up as high as possible while fully extending your body and stretch your arms straight up.\nReps: Do 3 sets of 10 you can add on more sets or reps to increase difficulty."];
	
	Exercise *legs4 =[[Exercise alloc] initWithName:@"Legs:Wall Sits" description:@"Step.1: Start with you back against a wall with your feet at shoulder length with your feet at least two feet from the wall with your toes pointing straight.\nStep.2: Slowly lower your self until your thighs are parallel to the ground\nStep.3: Now have your arms straight out and hold this position for a minute.\nReps: You can increase the time you hold this exercise to match your endurance level."];
	
	Exercise *shoulders =[[Exercise alloc] initWithName:@"Shoulders:Push Ups" description:@"Step.1: Place you hands on the floor and straighten your arms lean only on your hands and toes and while keeping your body in a straight line.\nStep.2: Slowly lower yourself until your chest is about 6 inches from the floor.\nStep.3: Hold this position for one second then straighten your arms and return to starting position then repeat.\nReps: Do 3 sets of 10 you can add on more sets or reps to increase difficulty."];
	
	Exercise *triceps =[[Exercise alloc] initWithName:@"Triceps:Diamond Push Ups" description:@"Step.1: Start off by getting on the ground and put your self into the push up position.\nStep.2: Move your hands close together until your thumbs touch each other(Try to make a diamond shape with you hands).\nStep.3: Slowly lower your self to the ground untill your chest is 6 inches from the ground.\nStep.4: Hold this position for one second then straighten yourself back to the statring position then repeat.\nReps: Do 3 sets of 10 you can add on more sets or reps to increase difficulty."];
	
	Exercise *triceps2 =[[Exercise alloc] initWithName:@"Triceps:Dips" description:@"Step.1: Sit on a bench or chair with you hands next to your thighs.\nStep.2: Push up and bring  your hips out and off the chair or bench with knees slightly bent.\nStep.3: Lower your body down as low as you can without touching the ground.\nStep.4: Push back up to starting position until and repeat step 3.\nReps: Do 3 sets of 10 you can add on set or reps to increase difficulty."];
	
	Exercise *triceps3 =[[Exercise alloc] initWithName:@"Triceps:Dumbbell Arm Extension" description:@"Step.1: Grab a dumbbell that is heavy enough to have some resistance but not too much resistance.\nStep.2: Choose the arm you want to start off with and lift the dumbbell up and behind you head.\nStep.3:  Now lift your arm with the dumbbell straight up and back down to behind you head and repeat this.\nReps: Do 3 sets of 10 you can add on more sets, reps or weight to increase difficulty."];
	self.exercises = [[NSMutableArray alloc] initWithObjects:abs,abs2,abs3,abs4,back,back2,biceps,biceps2,cardio,neck,neck2,legs,legs2,legs3,legs4,shoulders,triceps,triceps2,triceps3,nil];
					  
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

