//
//  Todo.h
//  Exercise
//
//  Created by Bennett Furman on 7/24/12.
//  Copyright (c) 2012 Drexel University. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Todo : NSObject {
	NSString  *text;
    NSString *units;
    NSString *measurement;
    NSString *setval;
    //create a function to display selection.
    
	NSInteger primaryKey;
	//NSInteger priority;
	NSInteger status;
	BOOL dirty;
}

- (void)updateStatus:(NSInteger) newStatus;
//- (void)updatePriority:(NSInteger) newPriority;

@property (assign, nonatomic, readonly) NSInteger primaryKey;
@property (nonatomic, retain) NSString *text;
@property (nonatomic, retain) NSString *units;
@property (nonatomic, retain) NSString *measurement;
@property (nonatomic, retain) NSString *setval;
//@property (nonatomic) NSInteger priority;
@property (nonatomic) NSInteger status;

@end
