//
//  Fraction_2.h
//  test-Object-C
//
//  Created by hades on 2021/7/2.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef Fraction_2_h
#define Fraction_2_h

# import <Foundation/Foundation.h>

@interface Fraction_2 : NSObject

@property int  numerator, denominator;

-(void) print;

// 两种命名方法
-(void)setTo:(int) n over:(int) d;   // Recommended:可读性更强
-(void)setNumerator:(int)n andDenominator:(int)d;

// 不带参数名的方法：声明方法
-(void)set:(int)n :(int)d;

-(void)add: (Fraction_2 *)f;
// 在方法中分配和返回对象
-(Fraction_2 *)add2:(Fraction_2 *)f;

-(void)reduce; //化简

@end

#endif /* Fraction_2_h */
