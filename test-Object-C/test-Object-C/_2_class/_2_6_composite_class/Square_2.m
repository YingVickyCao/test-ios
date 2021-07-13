//
//  Square_2.m
//  test-Object-C
//
//  Created by hades on 2021/7/13.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Square_2.h"

@implementation Square_2

-(instancetype) init{
    return [self initWithSide:0];
}

- (Square_2 *)initWithSide:(int)s{
    self = [super init];
    
    if (self) {
        rect = [[Rectangle alloc]init];
        [self setSide:s ];
    }
    return self;
}

- (void)setSide:(int)s{
    [rect setWidth:s andHeight:s];
}

- (int)area{
    return [rect area];
}

- (int)perimeter{
    return [rect perimeter];
}

- (int)side{
    return [rect width];
}


@end
