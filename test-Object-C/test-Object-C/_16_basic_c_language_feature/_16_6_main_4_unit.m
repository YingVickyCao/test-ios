//
//  _16_6_main_4_unit.m
//  test-Object-C
//
//  Created by hades on 2021/7/18.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        // 联合体
        union U{
            char s[9];
            int n;
            double d;
        };
        union U u1;
        NSLog(@"%lu",sizeof(u1)); // 16
        NSLog(@"%lu",sizeof(u1.s)); // 9
        NSLog(@"%lu",sizeof(u1.n)); // 4
        NSLog(@"%lu",sizeof(u1.d)); // 8
        
        NSLog(@"%d",u1.n); // 0
        NSLog(@"%f",u1.d);  // 0.000000
        
        u1.n = 5;
        NSLog(@"%d",u1.n); // 5
        NSLog(@"%f",u1.d);  // 0.000000
        
        u1.d = 10;
        NSLog(@"%d",u1.n); // 0
        NSLog(@"%f",u1.d);  // 10.000000
    }
    return 0;
    
}
*/
