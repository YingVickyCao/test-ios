//
//  Person.m
//  test-Object-C
//
//  Created by hades on 2020/12/11.
//  Copyright © 2020 hades. All rights reserved.
//

#import "Person.h"

// 2 类的实现
@implementation Person
{
    // 成员变量：若放在此处，为private，只能在此类中内调用
}

// 若方法不在.h 声明，则为private，那么只能在此类中调用。

// - (Person *)init{
// 等价
- (id)init{
    if (self = [super init]) {
        age = 21;
        height = 178.5;
        name = @"zhangsan";
        // super: 表示父类，init方法。第一步,分类内存空间，第二步，内存空间指向self
        // self ： 表示对象本身
    }
    return self;
}

- (id)initAge:(int)newAge
{
    if (self = [super init]) {
        age = newAge;
        height = 178.5;
        name = @"zhangsan";
    }
    return self;
}
- (id)initAge:(int)newAge andHeight:(float)newHeight
{
    if (self = [super init]) {
        age = newAge;
        height = newHeight;
        name = @"zhangsan";
    }
    return self;
}

- (void)setAge:(int)newAge{
    age = newAge;
}

- (void)setHeight:(float)newHeight{
    height = newHeight;
}

- (void)setAge:(int)newAge andHeight:(int)newHeight{
    age = newAge;
    height = newHeight;
}
- (int)getAge{
    return age;
}

- (float)getHeight{
    return height;
}
- (NSString*)getName{
    return name;
}
@end
