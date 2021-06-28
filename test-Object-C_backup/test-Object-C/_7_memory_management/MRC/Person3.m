//
//  Person.m
//  test-Object-C
//
//  Created by hades on 2020/12/23.
//  Copyright © 2020 hades. All rights reserved.
//

#import "Person3.h"

@implementation Person3

- (void)setDog:(Dog *)newDog{
    if (_dog != newDog) {
        NSLog(@"setDog, ---->,%zd:", _dog.retainCount);
        [_dog release];
        _dog= nil;
        NSLog(@"setDog,%zd", _dog.retainCount);
        _dog = [newDog retain];
        NSLog(@"setDog, <----,%zd:", _dog.retainCount);
    }
}

- (Dog *) dog{
    return _dog;
}

- (void)dealloc{
    NSLog(@"Person3 is death.system invoke dealloc.");
    [_dog release];
    _dog = nil;
    [super dealloc];
}
@end
