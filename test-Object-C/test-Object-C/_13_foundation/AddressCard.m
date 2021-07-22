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
    name = [NSString stringWithString:theName];
}

- (void)setEmail:(NSString *)theEmail{
    email = [NSString stringWithString:theEmail];
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
