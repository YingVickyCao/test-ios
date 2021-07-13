//
//  Car.m
//  test-Object-C
//
//  Created by hades on 2021/7/13.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Car.h"

// Class 'Car' does not conform to protocol 'RunProtocol'
@implementation Car

- (void)plane {
    NSLog(@"plane");
}

- (void)train {
    NSLog(@"train");
}

- (void)jump {
    NSLog(@"jump");
}

- (void)run {
    NSLog(@"run");
}

@end
