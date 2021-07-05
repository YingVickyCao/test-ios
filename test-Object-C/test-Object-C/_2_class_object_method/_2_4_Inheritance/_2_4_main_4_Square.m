//
//  _2_4_main_4_Square.m
//  test-Object-C
//
//  Created by hades on 2021/7/5.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Square.h"

int main(int argc, const char* argv[]){
    @autoreleasepool {
        Square *mySquare = [[Square alloc]init];
        [mySquare setSide : 5];

        NSLog(@"area is %i", [mySquare area]);
    }
    return 0;
}
