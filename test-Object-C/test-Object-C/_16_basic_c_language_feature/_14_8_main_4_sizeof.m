//
//  _14_8_main_4_sizeof.m
//  test-Object-C
//
//  Created by hades on 2021/7/18.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
// argc : 1
// *argv    const char *  "/Users/hades/Library/Developer/Xcode/DerivedData/test-Object-C-buxjaoiwvbppvyeelduajdrfbbfc/Build/Products/Debug/test-Object-C"    0x00007ffeefbff770
int main(int argc, const char* argv[]){
    @autoreleasepool {
        
        NSLog(@"%lu",sizeof(argv));  // 8
        
        NSLog(@"%lu",sizeof(int));  // 4
        
        Fraction *myFraction = [[Fraction alloc]init];
        NSLog(@"%lu",sizeof(myFraction));  // 8
        
        
        struct date{
            int year;
            int month;
            int day;
        };
        struct date dates[10];
        NSLog(@"%lu",sizeof(dates));        // 120
        NSLog(@"%lu",sizeof(dates[0]));     // 12
        NSLog(@"%lu",sizeof(struct date));  // 12
        NSLog(@"length is %lu",(sizeof(dates) / sizeof(dates[0])));             // 10
              NSLog(@"length is %lu",(sizeof(dates) / sizeof(struct date)));    // 10
        
//        int size[8];
//        NSLog(@"%lu",sizeof(size));     // 32
//        NSLog(@"%lu",sizeof(size[0]));  // 4
//        NSLog(@"length is %lu",(sizeof(size) / sizeof(size[0])));   // 8
    }
    return 0;
}
