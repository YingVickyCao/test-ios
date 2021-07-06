//
//  Fraction.m
//  test-Object-C
//
//  Created by hades on 2021/6/28.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Fraction_3_.h"

// 类的定义
// @@implementation部分：实现类（数据+方法）
@implementation Fraction_3
@synthesize numerator,denominator;

// 为了使用指定的初始化方法，需要修改init方法。
-(instancetype) init{
    return [self initWith:0 over:0];
}

// 指定的初始化方法
- (Fraction_3 *)initWith:(int)n over:(int)d{
    self = [super init];
    if (self) {
        [self setTo:n over:d];
    }
    return self;
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

-(void)setTo:(int)n over:(int)d{
    numerator = n;
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
