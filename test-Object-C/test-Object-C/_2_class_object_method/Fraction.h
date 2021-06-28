//
//  Fraction.h
//  test-Object-C
//
//  Created by hades on 2021/6/28.
//  Copyright © 2021 hades. All rights reserved.
//

// TODO:
#ifndef Fraction_h
#define Fraction_h

# import <Foundation/Foundation.h>

// @interface部分：声明类和类的方法
@interface Fraction : NSObject
-(void) print;

// set
-(void) setNumerator:(int) n;
-(void) setDenominator:(int)d;

// get
-(int) numerator;
-(int) denominator;

@end

#endif /* Fraction_h */
