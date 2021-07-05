//
//  Complex.m
//  test-Object-C
//
//  Created by hades on 2021/7/5.
//  Copyright © 2021 hades. All rights reserved.
//

#import  "Complex.h"

@implementation Complex
@synthesize real, imaginary;

- (void)print{
    NSLog(@"%g + %g",real,imaginary);
}

- (void)setReal:(double)a andImaginary:(double)b{
    real = a;
    imaginary = b;
}

- (Complex *)add2:(Complex *)f{
    Complex *result = [[Complex alloc] init];
    result.real = real + f.real;
    result.imaginary = imaginary + f.imaginary;
    return result;
}

@end
