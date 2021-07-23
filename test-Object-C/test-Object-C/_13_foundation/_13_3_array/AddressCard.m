//
//  AddressCard.m
//  test-Object-C
//
//  Created by hades on 2021/7/22.
//  Copyright © 2021 hades. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
{
    NSString *name;
    NSString *email;
}

- (void)setName:(NSString *)theName{
    NSLog(@"setName invoked,name is %@",theName);
    name = [NSString stringWithString:theName];
}

- (void)setEmail:(NSString *)theEmail{
    NSLog(@"setEmail invoked,email is %@",theEmail);
    email = [NSString stringWithString:theEmail];
}

- (void)setName:(NSString *)theName andEmail:(NSString *)theEmail{
    // 不可以：这种写法绕过了setter方法，直接为实例变量赋了参数的值。
//    name = theName;
//    email = theEmail;
    

    // 可以:这种写法： self.name = theName 等价于[self setName: theName],使用了seter方法为实例变量赋值。
    self.name = theName;
    self.email = theEmail;
}

- (NSString *)name{
    return name;
}

- (NSString *)email{
    return email;
}

- (void)print{
    // 左对齐打印UTF8 C-字符串
    NSLog(@"| %-20s | ",[name UTF8String]);
    NSLog(@"| %-20s | ",[email UTF8String]);
}

@end
