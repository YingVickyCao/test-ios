//
//  _12_define.m
//  test-Object-C
//
//  Created by hades on 2021/7/13.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PI 3.141592654

//#define TWO_PI 2 * 3.141592654
// 一个预定义可引用另一个预定义的值
#define TWO_PI 2 * PI

#define AND &&

#define OR ||

#define IS_LEAP_YEAR year % 4 == 0 && year %100 != 0 \
|| year % 400 == 0

// 带参数时，与左括号之间不能有空格
#define IS_LEAP_YEAR2(y) y % 4 == 0 && y %100 != 0 \
|| y % 400 == 0

//#define SQUARE(x) x * x
#define SQUARE(x) ((x) * (x))
/*
int main(int argc, const char* argv[]){
    
    @autoreleasepool {
        {
            int radius = 5;
            double area = PI * radius * radius;
            NSLog(@"%f",area);  // 78.539816
        }
        
        {
            int radius = 5;
            double area2 = TWO_PI * radius;
            NSLog(@"%f",area2); // 31.415927
        }
        // 预处理程序定义的右面不必是合法的Objectoive-C 表达式，只需要在使用它时，结果表达式正确就可以。
        {
            int x = 5;
            if (x > 0 AND x < 10) {
                NSLog(@"x is in (0,10)");   // invoked
            }
        }
        
        // 预处理程序有多行时，使用反斜线符号告诉与预处理程序这里还有后续，否则被忽略
        {
            int year = 2021;
            if (IS_LEAP_YEAR) {
                NSLog(@"2021 is leap year");
            }
            else{
                NSLog(@"2021 is not leap year");   // invoked
            }
            
            year = 2020;
            if (IS_LEAP_YEAR) {
                NSLog(@"2020 is leap year");   // invoked
            }
            else{
                NSLog(@"2020 is not leap year");
            }
            
            
            // 宏
            if (IS_LEAP_YEAR2 (2020)) {
                NSLog(@"2020 is leap year");   // invoked
            }
            else{
                NSLog(@"2020 is not leap year");
            }
        }
        
        // 定义宏时，注意加括号，否则可能得不到预期的结果
        {
            int v = 5;
            int y = SQUARE(v);
            NSLog(@"%i",y);
            
            y = SQUARE( v + 1);
            // 11 #define SQUARE(x) x * x
            // 36 #define SQUARE(x) ((x) * (x))
            NSLog(@"%i",y);
            
            // 36 #define SQUARE(x) x * x
            // 36 #define SQUARE(x) ((x) * (x))
            y = SQUARE( (v + 1) );
            NSLog(@"%i",y); // 36
        }
    }
}
*/
