//
//  Fraction.h
//  test-Object-C
//
//  Created by hades on 2021/6/28.
//  Copyright © 2021 hades. All rights reserved.
//

// TODO:
#ifndef Fraction_3_h
#define Fraction_3_h

# import <Foundation/Foundation.h>

// 类的定义
// @interface部分：声明类和类的方法
@interface Fraction_3 : NSObject

@property int numerator,denominator;

-(Fraction_3 *) initWith:(int)n over:(int)d;
-(void) print;

// set
-(void) setNumerator:(int) n;
-(void) setDenominator:(int)d;
-(void)setTo:(int) n over:(int) d;   // Recommended:可读性更强

// get
-(int) numerator;
-(int) denominator;

@end

#endif /* Fraction_h */
