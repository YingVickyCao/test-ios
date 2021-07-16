//
//  _16_5_main_4_pointer_4_struct.m
//  test-Object-C
//
//  Created by hades on 2021/7/16.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        
        // 指针 作用于 struct
        struct date{
            int year;
            int month;
            int day;
        };
        struct date today, *datePtr;
        datePtr = &today;
        // 结构指针运算符：写法1
        datePtr->year = 2014;
        datePtr->month = 9;
        datePtr->day = 25;
        NSLog(@"%i/%i/%i",datePtr->year,datePtr->month,datePtr->day);   // 2014/9/25
        // 结构指针运算符：写法2
        (*datePtr).day = 30;
        NSLog(@"%i/%i/%i",datePtr->year,datePtr->month,datePtr->day);   // 2014/9/30
    }
    return 0;
}
*/
