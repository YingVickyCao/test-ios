//
//  Rectangle.m
//  test-Object-C
//
//  Created by hades on 2021/7/5.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width,height;

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
