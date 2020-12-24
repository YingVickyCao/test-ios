//
//  Dog2.m
//  test-Object-C
//
//  Created by hades on 2020/12/24.
//  Copyright © 2020 hades. All rights reserved.
//

#import "Dog2.h"

@implementation Dog2
@synthesize ID=_ID;

- (void) dealloc{
    NSLog(@"dog %d is death",_ID);
    [super dealloc];
}
@end
