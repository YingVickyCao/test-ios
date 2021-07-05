//
//  Fraction_2.m
//  test-Object-C
//
//  Created by hades on 2021/7/2.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction_2.h"

@implementation Fraction_2

@synthesize numerator, denominator;

-(void) print{
    NSLog(@"numerator is %i, denominator is %i", numerator,denominator);
}


//-(void) print{
//    // 不加@synthesize，默认生成的实例成员变量最前面带“_”
//    NSLog(@"numerator is %i, denominator is %i", _numerator,_denominator);
//}

-(void)setTo:(int)n over:(int)d{
    numerator = n;
    denominator = d;
}
-(void)setNumerator:(int)n andDenominator:(int)d{
    numerator = n;
    denominator = d;
}

// 不带参数名的方法：定义方法
-(void)set:(int)n :(int)d{
    numerator = n;
    denominator = d;
}
// a/b + c/d = ((a*d) + (b*c))) / (b * d)
-(void)add:(Fraction_2 *)f{
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
    
    [self reduce];
}

// 在方法中分配和返回对象
-(Fraction_2 *)add2:(Fraction_2 *)f{
    Fraction_2 *result = [[Fraction_2 alloc]init];
    result.numerator = numerator * f.denominator + denominator + f.numerator;
    result.denominator = denominator * f.denominator;
    [result reduce];
    return result;
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
@end
