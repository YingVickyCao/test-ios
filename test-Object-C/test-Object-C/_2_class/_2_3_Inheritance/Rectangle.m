//
//  Rectangle.m
//  test-Object-C
//
//  Created by hades on 2021/7/5.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
    XYPoint *origin;
}

@synthesize width,height;

-(XYPoint *)origin{
    return origin;
}
//-(void)setOrigin:(XYPoint *)pt{
//    origin = pt;
//}
-(void)setOrigin:(XYPoint *)pt{
    if (!origin) {
        origin = [[XYPoint alloc]init];
    }
    origin.x = pt.x;
    origin.y = pt.y;
}

-(void)setWidth:(int)w andHeight:(int)h{
    width = w;
    height = h;
}
-(int)area{
    return  width * height;
}

-(int)perimeter{
    return (width + height) * 2;
}
@end
