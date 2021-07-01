//
//  _4_expression.m
//  test-Object-C
//
//  Created by hades on 2021/7/1.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, char* argv[]){
    @autoreleasepool {
        // 算数表达式
        {
            int a = 100;
            int b = 2;
            int c = 25;
            int result;
            
            result = a - b;
            NSLog(@"- : %i",result);    // 98
            
            result = b * c;
            NSLog(@"* : %i",result);    // 50
            
            result = a / c;
            NSLog(@"/ : %i", result);   // 4
            
            result = a + b * c;
            NSLog(@"a + b * c: %i", result); // 150
            
            int a2 = 25;
            int b2 = 2;
            float a3 = 25.0;
            float b3 = 2.0;
            NSLog(@"%i", 6 + a2 / 5 * b2);   // 16
            // 使用整数会丢掉小数位，但是程序运行更快。
            NSLog(@"%i",a2 / b2 * b2 );      // 24
            // 使用整数会精确到小数位，精度提高了，但是程序运行更慢。
            NSLog(@"%f",a3 / b3 * b3 );      // 25.000000
            NSLog(@"%i",-a2 );      // -25
        }
        // 模运算符
        {
            int a = 25, b = 5, c = 10, d = 7;
            NSLog(@"%i", a % b);    // 0
            NSLog(@"%i", a % c);    // 5
            NSLog(@"%i", a % d);   // 4
            NSLog(@"%i", a / d * d + a % d);  // 25
            
            // 模运算符只能用于整数
            //            float f1 = 25, f2 = 3;
            // ERROR:Invalid operands to binary expression ('float' and 'float')
            //            NSLog(@"%f", f1 % f2);  // 25
            
            // 分母为0，得到的是一个不确定的值
            // Remainder by zero is undefined： 96978， 96988
            //            NSLog(@"%i", 25 % 0);
            //            NSLog(@"%i", 23 % 0);
        }
        
        // 整数和浮点数的相互转换
        {
            float f1 = 123.125, f2;
            int i1, i2 = -150;
            
            i1 = f1;    // 浮点数 转换为 整数
            NSLog(@"%f, %i", f1, i1);   // 123.125000, 123
            
            f2 = i2;    // 整数 转换为 浮点数
            NSLog(@"%f, %i", f2, i2);  // -150.000000, -150
            
            f1 = i2/100;    // 整数 除以 整数
            NSLog(@"%i, %f", i2, f1);   // -150, -1.000000
            
            f2 = i2 / 100.0;// 整数 除以 浮点数
            NSLog(@"%i, %f", i2, f2);  // -150, -1.500000
            
            f2 = (float)i2 / 100;   // 强制类型转换符
            NSLog(@"%i, %f", i2, f2);   // -150, -1.500000
            
        }
    }
    return 0;
}
