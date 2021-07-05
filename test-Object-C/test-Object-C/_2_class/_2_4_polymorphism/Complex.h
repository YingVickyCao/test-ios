//
//  Complex.h
//  test-Object-C
//
//  Created by hades on 2021/7/5.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef Complex_h
#define Complex_h
#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;
-(void) print;
-(void) setReal: (double)a andImaginary: (double) b;
-(Complex *) add2: (Complex *) f;

@end
#endif /* Complex_h */
