//
//  Exercise.h
//  Exercise
//
//  Created by Ryan Lin on 7/17/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Exercise : NSObject {
	NSString *name;
	NSString *description;
}

@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *description;

- (id)initWithName:(NSString*)n description:(NSString *)desc;

@end
