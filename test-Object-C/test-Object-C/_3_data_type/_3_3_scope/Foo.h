//
//  Foo.h
//  test-Object-C
//
//  Created by hades on 2021/7/6.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef Foo_h
#define Foo_h

# import <Foundation/Foundation.h>

@interface Foo : NSObject


// 实例方法
-(int) myCount;
-(void) setCount:(int)c;
-(void) setgGlobalVar: (int) val;

// 类方法
+(Foo *) allocF;
+(int) count;

@end

#endif /* Foo_h */
