//
//  Fraction_4.m
//  test-Object-C
//
//  Created by hades on 2021/7/12.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Fraction_4.h"

// 类的定义
// @@implementation部分：实现类（数据+方法）
@implementation Fraction_4
@synthesize numerator,denominator;

-(void) print{
    NSLog(@"%i, %i",numerator, denominator);
}

-(void)setTo:(int)n over:(int)d{
    numerator = n;
    denominator = d;
}
-(void)reduce{
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0 ) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /=u;
    denominator /=u;
}

//-(Fraction_4 *)add:(Fraction_4 *)f{
//    Fraction_4 *result = [[Fraction_4 alloc]init];
//    result.numerator = numerator * f.denominator + denominator + f.numerator;
//    result.denominator = denominator * f.denominator;
//    [result reduce];
//    return result;
//}
@end
