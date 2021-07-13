//
//  Fraction_4.h
//  test-Object-C
//
//  Created by hades on 2021/7/12.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef Fraction_4_h
#define Fraction_4_h

# import <Foundation/Foundation.h>

// 类的定义
// @interface部分：声明类和类的方法
@interface Fraction_4 : NSObject

@property int numerator,denominator;

-(void) print;
-(void)setTo:(int) n over:(int) d;
-(void)reduce;
//-(Fraction_4 *)add:(Fraction_4 *)f;

@end
#endif /* Fraction_4_h */
