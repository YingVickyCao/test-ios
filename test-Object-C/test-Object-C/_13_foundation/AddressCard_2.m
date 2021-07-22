//
//  AddressCard_2.m
//  test-Object-C
//
//  Created by hades on 2021/7/22.
//  Copyright © 2021 hades. All rights reserved.
//

#import "AddressCard_2.h"

@implementation AddressCard_2

@synthesize name,email;

-(void)print{
    // 左对齐打印UTF8 C-字符串
    NSLog(@"| %-20s | ",[name UTF8String]);
    NSLog(@"| %-20s | ",[email UTF8String]);
}

@end
