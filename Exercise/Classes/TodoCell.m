//
//  TodoCell.m
//  Exercise
//
//  Created by Bennett Furman on 7/24/12.
//  Copyright (c) 2012 Drexel University. All rights reserved.
//

#import "TodoCell.h"

@interface TodoCell()
- (UILabel *)newLabelWithPrimaryColor:(UIColor *) selectedColor:(UIColor *)selectedColor fontsize:(CGFloat)fontSize bold:(BOOL)bold;
@end

@implementation TodoCell

@synthesize todoMeasurement,todoData,todoTextLabel;//todoPriorityLabel,todoPriorityImageView;

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
	if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
        UIView *myContentView = self.contentView;
        
		//self.todoPriorityImageView = [[UIImageView alloc] initWithImage:priority1Image];
		//[myContentView addSubview:self.todoPriorityImageView];
        //[self.todoPriorityImageView release];
        
        self.todoTextLabel = [self newLabelWithPrimaryColor:[UIColor blackColor] 
											  selectedColor:[UIColor whiteColor] fontSize:14.0 bold:YES]; 
		self.todoTextLabel.textAlignment = UITextAlignmentLeft; // default
		[myContentView addSubview:self.todoTextLabel];
		[self.todoTextLabel release];
        
        /*self.todoPriorityLabel = [self newLabelWithPrimaryColor:[UIColor blackColor] 
												  selectedColor:[UIColor whiteColor] fontSize:10.0 bold:YES];
		self.todoPriorityLabel.textAlignment = UITextAlignmentRight;
		[myContentView addSubview:self.todoPriorityLabel];
		[self.todoPriorityLabel release];
        
        // Position the todoPriorityImageView above all of the other views so
        // it's not obscured. It's a transparent image, so any views
        // that overlap it will still be visible.
        [myContentView bringSubviewToFront:self.todoPriorityImageView];*/
    }
    return self;
}

/*- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}*/

- (Todo *)todo
{
    return self.todo;
}

- (void)setTodo:(Todo *)newTodo
{
    
    todo = newTodo;
    
    self.todoTextLabel.text = newTodo.text;
    //self.todoPriorityImageView.image = [self imageForPriority:newTodo.priority];
/*    
	switch(newTodo.priority) {
		case 2:
			self.todoPriorityLabel.text = @"Medium";
			break;
		case 3:
			self.todoPriorityLabel.text = @"Low";
			break;
		default:
			self.todoPriorityLabel.text = @"High";
			break;
	}*/
	
    [self setNeedsDisplay];
}

- (void)layoutSubviews {
    
#define LEFT_COLUMN_OFFSET 1
#define LEFT_COLUMN_WIDTH 50
	
#define RIGHT_COLUMN_OFFSET 75
#define RIGHT_COLUMN_WIDTH 240
	
#define UPPER_ROW_TOP 4
    
    [super layoutSubviews];
    CGRect contentRect = self.contentView.bounds;
	
    if (!self.editing) {
		
        CGFloat boundsX = contentRect.origin.x;
		CGRect frame;
        
        // Place the Text label.
		frame = CGRectMake(boundsX +RIGHT_COLUMN_OFFSET  , UPPER_ROW_TOP, RIGHT_COLUMN_WIDTH, 13);
		frame.origin.y = 15;
		self.todoTextLabel.frame = frame;

     /*   // Place the priority image.
        UIImageView *imageView = self.todoPriorityImageView;
        frame = [imageView frame];
		frame.origin.x = boundsX + LEFT_COLUMN_OFFSET;
		frame.origin.y = 10;
 		imageView.frame = frame;
        
        // Place the priority label.
        CGSize prioritySize = [self.todoPriorityLabel.text sizeWithFont:self.todoPriorityLabel.font 
                                                               forWidth:RIGHT_COLUMN_WIDTH lineBreakMode:UILineBreakModeTailTruncation];
        CGFloat priorityX = frame.origin.x + imageView.frame.size.width + 8.0;
        frame = CGRectMake(priorityX, UPPER_ROW_TOP, prioritySize.width, prioritySize.height);
		frame.origin.y = 15;
        self.todoPriorityLabel.frame = frame;
     */
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
	[super setSelected:selected animated:animated];
	
	UIColor *backgroundColor = nil;
	if (selected) {
	    backgroundColor = [UIColor clearColor];
	} else {
		backgroundColor = [UIColor whiteColor];
	}
    
	self.todoTextLabel.backgroundColor = backgroundColor;
	self.todoTextLabel.highlighted = selected;
	self.todoTextLabel.opaque = !selected;
	
/*	self.todoPriorityLabel.backgroundColor = backgroundColor;
	self.todoPriorityLabel.highlighted = selected;
	self.todoPriorityLabel.opaque = !selected; */
}

- (UILabel *)newLabelWithPrimaryColor:(UIColor *)primaryColor 
						selectedColor:(UIColor *)selectedColor fontSize:(CGFloat)fontSize bold:(BOOL)bold
{
    
    UIFont *font;
    if (bold) {
        font = [UIFont boldSystemFontOfSize:fontSize];
    } else {
        font = [UIFont systemFontOfSize:fontSize];
    }
    
	UILabel *newLabel = [[UILabel alloc] initWithFrame:CGRectZero];
	newLabel.backgroundColor = [UIColor whiteColor];
	newLabel.opaque = YES;
	newLabel.textColor = primaryColor;
	newLabel.highlightedTextColor = selectedColor;
	newLabel.font = font;
	
	return newLabel;
}

- (void)dealloc {
	[super dealloc];
}

@end
