//
//  Fraction_main.m
//  test-Object-C
//
//  Created by hades on 2021/6/28.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Fraction_3_.h"

//program 部分：调用。
int main(int argc, const char* argv[]){
    @autoreleasepool {
        Fraction_3 *f = [[Fraction_3 alloc]init];
        [f setTo:1 over:3];
        [f print];
        
        Fraction_3 *f2 = [[Fraction_3 alloc] initWith:1 over:3];
        [f2 print];
        //        [f2 release]; TODO:
    }
    return 0;
}

