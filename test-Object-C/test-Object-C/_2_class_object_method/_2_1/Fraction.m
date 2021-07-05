//
//  Fraction.m
//  test-Object-C
//
//  Created by hades on 2021/6/28.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Fraction.h"

// 类的定义
// @@implementation部分：实现类（数据+方法）
@implementation Fraction
{
    int numerator;
    int denominator;
}

-(void) print{
    NSLog(@"%i, %i",numerator, denominator);
}

// set
-(void) setNumerator:(int)n{
    numerator = n;
}

-(void)setDenominator:(int)d{
    denominator = d;
}

// get
-(int) numerator{
    return numerator;
}

-(int) denominator{
    return denominator;
}
@end
