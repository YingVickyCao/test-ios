//
//  Cat.m
//  test-Object-C
//
//  Created by hades on 2020/12/23.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

@implementation Dog
@synthesize ID = _ID;

- (void) dealloc {
    NSLog(@"dog is death. system invoke dealloc. ");
    [super dealloc];  // 回收内存
}
@end
