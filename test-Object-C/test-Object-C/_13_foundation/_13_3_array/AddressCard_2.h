//
//  AddressCard_2.h
//  test-Object-C
//
//  Created by hades on 2021/7/22.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef AddressCard_2_h
#define AddressCard_2_h

#import <Foundation/Foundation.h>

@interface AddressCard_2 : NSObject

// 让系统生成访问器方法,代替 AddressCard.m中手写setter方法
// @property 默认方法不会生成副本，仅仅进行赋值（默认为assign特性）。copy 特性：在setter方法内生成实参变量的副本。
// nonatomic: 速度比atomic快，但不是线程安全。
// atomic: 速度较慢，但线程安全。
@property (copy,nonatomic) NSString *name, *email;
-(void) setName:(NSString *)theName andEmail:(NSString*) theEmail;

-(void) print;
-(NSComparisonResult) compareNames:(id)element;

@end

#endif /* AddressCard_2_h */
