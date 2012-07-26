//
//  Todo.m
//  Exercise
//
//  Created by Bennett Furman on 7/24/12.
//  Copyright (c) 2012 Drexel University. All rights reserved.
//

#import "Todo.h"

@implementation Todo
@synthesize primaryKey,text,status,units,measurement,setval;//priority,

-(id) init
{
    self = [super init];
    if (self) {
        self.text = @"exercise";
        self.measurement = @"0";
        self.setval = @"0";
    }
    return self;
}
- (void)updateStatus:(NSInteger)newStatus {
	self.status = newStatus;
	dirty = YES;
	
}

/*- (void)updatePriority:(NSInteger)newPriority {
	self.priority = newPriority;
	dirty = YES;
}*/

@end
