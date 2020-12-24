//
//  Person3.m
//  test-Object-C
//
//  Created by hades on 2020/12/24.
//  Copyright © 2020 hades. All rights reserved.
//

#import "Person4.h"

@implementation Person4

// strong 只适合在 ARC 下使用
// 自动生成，-->
//@synthesize str = _str;
//- (void) setStr:(NSString *)str{
//    _str = str;
//}
// 自动生成，<--

// (retain) 可以在MRC 下使用
// 自动生成，-->
//@synthesize dog = _dog;
//- (void)setDog:(Dog2 *)dog{
//    if (_dog != dog) {
//        [_dog release];
//        _dog = nil;
//        _dog = [dog retain];
//    }
//}
// 自动生成，<-

- (void) dealloc{
    NSLog(@"Person is death");
    [super dealloc];
}
@end
