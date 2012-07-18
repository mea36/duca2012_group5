//
//  Exercise.m
//  Exercise
//
//  Created by Ryan Lin on 7/17/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Exercise.h"


@implementation Exercise
@synthesize name,description;

- (id)initWithName:(NSString *)n description:(NSString *)desc {
	self.name = n;
	self.description = desc;
	return self;
}
@end
