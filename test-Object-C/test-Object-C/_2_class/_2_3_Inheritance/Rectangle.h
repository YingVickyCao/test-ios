//
//  Rectange.h
//  test-Object-C
//
//  Created by hades on 2021/7/5.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef Rectange_h
#define Rectange_h

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle:NSObject // 长方形
@property int width, height;

-(XYPoint *) origin; //  origin is a instance of XYPoint
-(void)setOrigin:(XYPoint *) pt;
-(void)setWidth:(int) w andHeight:(int) h;
-(int)area; // 面积
-(int)perimeter; //  周长

@end

#endif /* Rectange_h */
