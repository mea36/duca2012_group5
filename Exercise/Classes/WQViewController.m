//
//  WQViewController.m
//  Exercise
//
//  Created by Bennett Furman on 7/24/12.
//  Copyright (c) 2012 Drexel University. All rights reserved.
//

#import "WQViewController.h"
#import "ExerciseAppDelegate.h"
#import "Exercise.h"
#import "TodoCell.h"
#import "Todo.h"
#import "ViewController.h"

@interface WQViewController ()

@end

@implementation WQViewController
@synthesize todoView;//, tableView;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"Workout Queue";
    //self.navigationItem.leftBarButtonItem = self.editButtonItem;//Edit to be somewhere else on the screen
    
    
    UIBarButtonItem * btn = [[UIBarButtonItem alloc] initWithTitle:@"Add" style:(UIBarButtonItemStyleBordered) target:self action:@selector(addTodo:)];
    self.navigationItem.rightBarButtonItem = btn;
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
- (void)viewWillAppear:(BOOL)animated {
	[self.tableView reloadData];
	[super viewWillAppear:animated];
}
- (void)addTodo:(id)sender {
    ExerciseAppDelegate *appDelegate = (ExerciseAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if(self.todoView == nil) {
        TodoViewController *viewController = [[TodoViewController alloc]
                                              initWithNibName:@"TodoViewController" bundle:[NSBundle mainBundle]];
        self.todoView = viewController;
        [viewController release];
    }
    NSLog(@"adding todod");
    Todo *todo = [appDelegate addTodo];
    [self.navigationController pushViewController:self.todoView animated:YES];
    self.todoView.todo = todo;
    self.todoView.title = todo.text;
    [self.todoView.todoText setText:todo.text];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
    // Updates the appearance of the Edit|Done button as necessary.
    [super setEditing:editing animated:animated];
    [self.tableView setEditing:editing animated:YES];
    // Disable the add button while editing.
    if (editing) {
        self.navigationItem.rightBarButtonItem.enabled = NO;
    } else {
        self.navigationItem.rightBarButtonItem.enabled = YES;
    }
}

- (void)viewDidUnload //Comment this method out?
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	ExerciseAppDelegate *appDelegate = (ExerciseAppDelegate *)[[UIApplication sharedApplication] delegate];
        NSLog(@"num rows = %d", appDelegate.todos.count);
    return appDelegate.todos.count;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *MyIdentifier = @"MyIdentifier";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
	if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:MyIdentifier] autorelease];
    }
    
	ExerciseAppDelegate *appDelegate = (ExerciseAppDelegate *)[[UIApplication sharedApplication] delegate];
	Todo *td = [appDelegate.todos objectAtIndex:indexPath.row];
	
    [[cell textLabel] setText:td.text];
    [[cell detailTextLabel] setText:[NSString stringWithFormat:@"%@: %@ amount: %@", @"Reps", td.measurement, td.setval]];
	//[cell setTodo:td];
	
	// Set up the cell
	return cell;
/*static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    return cell;*/
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        ExerciseAppDelegate *appDelegate = (ExerciseAppDelegate *)[[UIApplication sharedApplication] delegate];
        NSLog(@"deleting object at index %d", indexPath.row);
        [[appDelegate todos] removeObjectAtIndex:indexPath.row];

        [[self tableView] deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];//HELP

   
        //Todo *todo = (Todo *)[appDelegate.todos objectAtIndex:indexPath.row];
        
        [self.tableView endUpdates];
        [self.tableView reloadData];
    }  
    else {
        NSLog(@"here i am");
    }
   // else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
  //  }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExerciseAppDelegate *appDelegate = (ExerciseAppDelegate *)[[UIApplication sharedApplication] delegate];
    Todo *todo = (Todo *)[appDelegate.todos objectAtIndex:indexPath.row];
    
    if(self.todoView == nil) {
        TodoViewController *viewController = [[TodoViewController alloc] 
                                              initWithNibName:@"TodoViewController" bundle:[NSBundle mainBundle]];
        self.todoView = viewController;
        [viewController release];
    }
    
    [self.navigationController pushViewController:self.todoView animated:YES];
    self.todoView.todo = todo;
    self.todoView.title = todo.text;
    [self.todoView.todoText setText:todo.text];
   /* 
    NSInteger priority = todo.priority - 1;
    if(priority > 2 || priority < 0) {
        priority = 1;
    }
    priority = 2 - priority;
    
    [self.todoView.todoPriority setSelectedSegmentIndex:priority];
    */
    if(todo.status == 1) {
        [self.todoView.todoButton setTitle:@"Mark As In Progress" forState:UIControlStateNormal];
        [self.todoView.todoButton setTitle:@"Mark As In Progress" forState:UIControlStateHighlighted];
        [self.todoView.todoStatus setText:@"Complete"];
    } else {
        [self.todoView.todoButton setTitle:@"Mark As Complete" forState:UIControlStateNormal];
        [self.todoView.todoButton setTitle:@"Mark As Complete" forState:UIControlStateHighlighted];
        [self.todoView.todoStatus setText:@"In Progress"];
    }
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
}
-(void) dealloc
{
    [todoView release];
//    [tableView release];
    [super dealloc];
}

@end
