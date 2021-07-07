//
//  Foo.m
//  test-Object-C
//
//  Created by hades on 2021/7/6.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Foo.h"

static int gCounter;

@implementation Foo

// 实例方法
- (void) setgGlobalVar:(int)val{
    // 声明我要访问全局变量gGlobalVar
    extern int gGlobalVar;
    gGlobalVar = val;
}

- (int)myCount{
    extern int gCounter;
    return gCounter;
}

- (void)setCount: (int) c{
    extern int gCounter;
    gCounter = c;
}

// 类方法
// 继承而来的allocfan 没有被重载，而是定义了自己的分配器方法。重载alloc不是好的编程，因为这个方法要处理内存的物理分配。
+ (Foo *) allocF{
    // 因为定在该文件中，因此，不需要在此方法中使用 extern 声明。声明是为了阅读方法的人明白，访问的变量是定义在方法之外。g前缀也出于同样的目的。因此，大多数程序员一般不使用 extern 声明。
//    extern int gCounter;
    ++gCounter;
    //
    return [Foo alloc];
}

+ (int)count{
//    extern int gCounter;
    return gCounter;
}

@end
