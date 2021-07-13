//
//  MathOps.m
//  test-Object-C
//
//  Created by hades on 2021/7/12.
//  Copyright © 2021 hades. All rights reserved.
//

#import "MathOps.h"

@implementation Fraction_4 (MathOps)

-(Fraction_4 *)add:(Fraction_4 *)f{
    Fraction_4 *result = [[Fraction_4 alloc]init];
    result.numerator = self.numerator * f.denominator + self.denominator + f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}

- (Fraction_4 *)mul:(Fraction_4 *)f{
    Fraction_4 *result = [[Fraction_4 alloc]init];
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}

- (Fraction_4 *)sub:(Fraction_4 *)f{
    Fraction_4 *result = [[Fraction_4 alloc]init];
    result.numerator = self.numerator * f.denominator - self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    return result;
}

- (Fraction_4 *)div:(Fraction_4 *)f{
    Fraction_4 *result = [[Fraction_4 alloc]init];
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    return result;
}

@end
