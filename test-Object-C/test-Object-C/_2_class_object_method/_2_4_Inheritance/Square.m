//
//  Square.m
//  test-Object-C
//
//  Created by hades on 2021/7/5.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Square.h"
@implementation Square:Rectangle

-(void)setSide:(int)s{
    [self setWidth:s andHeight:s];
}

-(int)side{
//    return self.width;
    return [self width];
}

@end
