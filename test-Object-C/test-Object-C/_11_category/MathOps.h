//
//  MathOps.h
//  test-Object-C
//
//  Created by hades on 2021/7/12.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef MathOps_h
#define MathOps_h

#import "Fraction_4.h"

// 分类名称为Fraction_4
@interface Fraction_4 (MathOps)

-(Fraction_4 *)add:(Fraction_4 *)f;
-(Fraction_4 *)mul:(Fraction_4 *)f;
-(Fraction_4 *)sub:(Fraction_4 *)f;
-(Fraction_4 *)div:(Fraction_4 *)f;
@end

#endif /* MathOps_h */
