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
#import "ViewController.h"
#import "Todo.h"
#import "TodoViewController.h"

@interface ExerciseAppDelegate (Private)
@end

@implementation ExerciseAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize exercises;
@synthesize todos;

- (id)init {
	if (self = [super init]) {
		// 
	}
	return self;
}


/*- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	
	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}*/


// Open the database connection and retrieve minimal information for all objects.
- (void)initializeDatabase {
    NSMutableArray *todoArray = [[NSMutableArray alloc] init];
    self.todos = todoArray;
    [todoArray release];
}

-(void)removeTodo:(Todo *)todo {
	NSUInteger index = [todos indexOfObject:todo];
    
    if (index == NSNotFound) return;
    
    //[todo deleteFromDatabase];
    [todos removeObject:todo];
}

-(Todo *) addTodo {
    Todo *td = [[Todo alloc] init ];
    //    td.text = [NSString stringWithFormat:@"Go %d", 1];
    td.text = @"";
    //td.priority = 1;
    td.status = 0;
    
    if (self.todos == nil) {
        NSLog(@"i'm nil");
    }
    [self.todos addObject:td];
    
    NSLog(@"%@", self.todos);
    return td;
    //[td release];
    //NSString *g = [NSString @"I am task # %d"];
    //[todos addObject:g];//NSInteger primaryKey = [Todo insertNewTodoIntoDatabase:database];//Should I replace "insertNewTodo..." with "addObject"? How do I replace "database"?
    //Todo *newTodo = [[Todo alloc] initWithPrimaryKey:primaryKey database:database];//Todo *newTodo = [[Todo alloc] initWithPrimaryKey:primaryKey database:database];
    
	//[todos addObject:newTodo];
    //return g; //return newTodo;
}




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
    [self initializeDatabase];


	
	Exercise *abs	=[[Exercise alloc] initWithName:@"Abs:Bent-Knee Hip Raise" description:@"Step.1: Lie flat on the ground with your arms at your sides and your palms flat on the ground.\nStep.2: Now bend your knees at about a 75 degree angle and lift your feet off the floor around 2 inches.\nStep.3: Using your lower abs bring your knees in towards you while you maintain the 75 degree angle you have your legs in.\nReps: Do three sets of 10. You can add on more reps or sets to increase difficulty."];
	abs.image = @"imgres.jpeg";
	
	Exercise *abs2	=[[Exercise alloc] initWithName:@"Abs:Crunches" description:@"Step.1: Lie with your back on the floor and your feet flat, knees bent.\nStep.2: Lift your upper body as high as possible without your legs coming off the ground then slowly lower yourself back to the starting position.\nReps: Do three sets of 10. You can add on sets and reps to increase difficulty."];
	abs2.image = @"crunches.jpg";
	
	Exercise *abs3	=[[Exercise alloc] initWithName:@"Abs/Back:Planking" description:@"Step.1: Lie face down on the ground and with your forearms flat on the ground.\nStep.2: Now push yourself up with your forearms on the ground.\nStep.3: Tilt your pelvis down to prevent your rear from sticking up.\nStep.4: Hold this position for 20-30 seconds\nReps: Do three sets of 10. You can add on more sets or time to increase difficulty."];
	abs3.image = @"planking exercise.gif";
	
	Exercise *back  =[[Exercise alloc] initWithName:@"Back:Chinup" description:@"Step.1: Using a underhand grip hang on a bar with you arms alligned with your shoulders and have your legs crossed and slighlty bent.\nStep.2: Pull yourself up as high as possible(Try to get your chin over bar if possible.)\nStep.3: Hold for one second then slowly lower yourself back down to starting position and repeat.\nReps: Do three sets of 10. You can increase sets and reps to increase difficulty."];
	back.image = @"chin up-1.jpg";
	
	Exercise *back2 =[[Exercise alloc] initWithName:@"Back:Hug Knees To Chest" description:@"Step.1: Lie down on your back and pull both knees up to your chest.\nStep.2: Hold your arms under the knees, not over.\nStep.3: Slowly pull your knees towards your shoulders.\nStep.4: Hold this position for 20-30 seconds.\nReps: Do 3 sets of 20-30 seconds you can add on set or time to increase difficulty."]; 
	back2.image = @"imgres-1.jpeg";
	
	Exercise *biceps =[[Exercise alloc] initWithName:@"Biceps:Hammer Curls" description:@"Step.1: Get two dumbbells of equal weight that give you some resistance but not too much.\nStep.2: Stand up straight and with the dumbbells in each arm with your palms facing your sides.\nStep.3: Lift the two dumbbells while keeping your hands in the same position then slowly lower your arms back to the starting position and repeat.\nReps: Do three sets of 10 you can add on more reps, sets or weight to increase difficulty."];
	biceps.image = @"hammer curls.jpg";
	
	Exercise *biceps2 =[[Exercise alloc] initWithName:@"Biceps:Standing Dumbbell Curl" description:@"Step.1: Take two dumbbells of equal weight that you will be able to lift with medium resistance.\nStep.2: Hold the two dumbbells at your sides with your palms facing away from you.\nStep.3: Curl the dumbbells up towards your shoulders.\nStep.4: Lower the dumbbells slowly and back to the starting position.\nReps: Do three sets of 10. You can add on more reps or weight to increase difficulty."];
	biceps2.image = @"imgres-2.jpeg";
	
	Exercise *cardio =[[Exercise alloc] initWithName:@"Cardio" description:@"Here are some different activitys to help increase your cardio.\n1. Boxing/Kick Boxing.\n2. Cycling.\n3. Jump Rope.\n4. Rowing.\n5. Swimming.\n6. Step Aerobics.\n7. Walking/Jogging/Running."];				  
	cardio.image = @"imgres-3.jpeg";
	
	Exercise *neck =[[Exercise alloc] initWithName:@"Neck:Chin To Chest" description:@"Step.1: Get into a seated position on the floor.\nStep.2: Place your hands behind your head with your fingers interlocked and have your elbows pointing straight.\nStep.3: Slowly pull your head down to your chest and hold for 20-30 seconds.\nReps: Do three sets of 10. You can add on more sets or time to increase difficulty."];
	neck.image = @"imgres-4.jpeg";
	
	Exercise *neck2 =[[Exercise alloc] initWithName:@"Neck:Side Neck Stretch" description:@"Step.1: Start with your shoulders relaxed.\nStep.2: Gently tilt your head towards your shoulder.\nStep.3: Assist strech with a gentle pull on the side of the head.\nReps: Do 3 sets of 20-30 seconds."];
	neck2.image = @"imgres-5.jpeg";
	
	Exercise *legs =[[Exercise alloc] initWithName:@"Legs:Bodyweight Squats" description:@"Step.1: Stand with your feet shoulder length apart and have your toes facing forward and your hands behind your head.\nStep.2: Lower yourself to the ground as far as you can without touching the ground and without having your heels come off the ground.\nStep.3: Lift yourself back up to starting position and repeat.\nReps: Do 3 sets of 10 you can add on more sets or reps to increase difficulty."];
	legs.image = @"imgres-6.jpeg";
	
	Exercise *legs2 =[[Exercise alloc] initWithName:@"Legs:Lunge" description:@"Step.1: Stand up straight with your hands on your hips.\nStep.2: Step forward with one leg and lower your body until your leg is 90 degrees from the floor\nStep.3: Return to the standing position as quickly as possible and repeat the same step but use your other leg.\nReps: Do three sets of 10 reps. You can add on more sets or reps to increase diffculty."];
	legs2.image = @"lunge.jpg";
	
	Exercise *legs3 =[[Exercise alloc] initWithName:@"Legs:Rocket Jump" description:@"Step.1: Begin in a relaxed stance with your feet at shoulder length apart and hold your arms close to your body.\nStep.2: Squat down halfway and jump up as high as possible while fully extending your body and stretch your arms straight up.\nReps: Do three sets of 10. You can add on more sets or reps to increase difficulty."];
	legs3.image = @"Jump Squat.jpeg";
	
	Exercise *legs4 =[[Exercise alloc] initWithName:@"Legs:Wall Sits" description:@"Step.1: Start with your back against a wall with your feet at shoulder length with your feet at least two feet from the wall with your toes pointing straight.\nStep.2: Slowly lower your self until your thighs are parallel to the ground\nStep.3: Now have your arms straight out and hold this position for a minute.\nReps: You can increase the time you hold this exercise to match your endurance level."];
	legs4.image = @"wallsit.gif";
	
	Exercise *shoulders =[[Exercise alloc] initWithName:@"Shoulders:Push Ups" description:@"Step.1: Place your hands on the floor and straighten your arms lean only on your hands and toes and while keeping your body in a straight line.\nStep.2: Slowly lower yourself until your chest is about 6 inches from the floor.\nStep.3: Hold this position for one second then straighten your arms and return to starting position then repeat.\nReps: Do three sets of 10. You can add on more sets or reps to increase difficulty."];
	shoulders.image = @"push ups.jpg";
	
	Exercise *triceps =[[Exercise alloc] initWithName:@"Triceps:Diamond Push Ups" description:@"Step.1: Get and on the ground and get in the push up position and move your hands close together until your hands make a diamond shape.\nStep.3: Slowly lower your self to the ground untill your chest is 6 inches from the ground hold this position for one second then straighten yourself back to the statring position then repeat.\nReps: Do three sets of 10. You can add on more sets or reps to increase difficulty."];
	triceps.image = @"diamond pushups.png";
	
	Exercise *triceps2 =[[Exercise alloc] initWithName:@"Triceps:Dips" description:@"Step.1: Sit on a bench or chair with your hands next to your thighs.\nStep.2: Push up and bring  your hips out and off the chair or bench with knees slightly bent.\nStep.3: Lower your body down as low as you can without touching the ground.\nStep.4: Push back up to starting position until and repeat step 3.\nReps: Do three sets of 10. You can add on set or reps to increase difficulty."];
	triceps2.image = @"imgres-7.jpeg";
	
	Exercise *triceps3 =[[Exercise alloc] initWithName:@"Triceps:Dumbbell Arm Extension" description:@"Step.1: Grab a dumbbell that is heavy enough to have some resistance but not too much resistance.\nStep.2: Choose the arm you want to start off with and lift the dumbbell up and behind your head.\nStep.3:  Now lift your arm with the dumbbell straight up and back down to behind your head and repeat this.\nReps: Do 3 sets of 10. You can add on more sets, reps, or weight to increase difficulty."];
	triceps3.image = @"dumbbell arm extension.gif";
	
	self.exercises = [[NSMutableArray alloc] initWithObjects:abs,abs2,abs3,back,back2,biceps,biceps2,cardio,neck,neck2,legs,legs2,legs3,legs4,shoulders,triceps,triceps2,triceps3,nil];
					  
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
    // Save data if appropriate
    [todos makeObjectsPerformSelector:@selector(dehydrate)];
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

