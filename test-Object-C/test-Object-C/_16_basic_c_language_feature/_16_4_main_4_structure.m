//
//  _16_4_structure.m
//  test-Object-C
//
//  Created by hades on 2021/7/15.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char* argv[]){
    @autoreleasepool {
        
        // 定义date的结构。此时，计算机没有为它分配内存空间
        struct date{
            int year;
            int month;
            int day;
        };
        
        // 定义一个 struct date 类型 的变量，所以导致了内存中分配了空间
        struct date today;
        
        // 赋值
        today.year = 2021;
        today.month = 7;
        today.day = 21;
        
        if (today.year == 2021) {
            NSLog(@"This year is 2021");
        }
        
        // 格式化输出
        NSLog(@"%i/%i/%i",today.year,today.month,today.day);    // 2021/7/21
        // %.2i : 至少显示两位字符，不够左边补零
        NSLog(@"%i/%.2i/%.2i",today.year,today.month,today.day);// 2021/07/21
        // %.2i : 至少显示两位字符，不够左边补空格
        NSLog(@"%i/%2.i/%.2i",today.year,today.month,today.day);// 2021/ 7/21
        
        
        // 初始化
        struct date purchasedDay = {2021,5,1};
        NSLog(@"%i/%i/%i",purchasedDay.year,purchasedDay.month,purchasedDay.day);  // 2021/5/1
        
        // 未赋值的元素，默认初始值是未定义的（undefined），可以是任何值。
        struct date tomorrow = {2021};
        NSLog(@"%i/%i/%i",tomorrow.year,tomorrow.month,tomorrow.day);  // 2021/0/0
        
        // .member = value 可以按任意顺序初始化结构中指定成员
        struct date yesterday = {
            .month = 7,
            .day = 1,
            .year = 2020
        };
        struct date yesterday2 = {
            .year = 2021
        };
        NSLog(@"%i/%i/%i",yesterday.year,yesterday.month,yesterday.day);        // 2020/7/1
        NSLog(@"%i/%i/%i",yesterday2.year,yesterday2.month,yesterday2.day);    // 2021/0/0
    }
    return 0;
}
