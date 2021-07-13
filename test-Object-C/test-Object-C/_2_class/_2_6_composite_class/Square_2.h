//
//  Square_2.h
//  test-Object-C
//
//  Created by hades on 2021/7/13.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef Square_2_h
#define Square_2_h

#import "Rectangle.h"

@interface Square_2 : NSObject
{
    Rectangle *rect;
}
-(Square_2 *)initWithSide:(int)s;

-(void)setSide:(int)s;
-(int)side;
-(int)area; // 面积
-(int)perimeter; //  周长

@end

#endif /* Square_2_h */
