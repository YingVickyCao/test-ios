//
//  _3_4_main.m
//  test-Object-C
//
//  Created by hades on 2021/7/7.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        {
            enum direction {up,down,left,right};
            enum direction d1;
            enum direction d2 =  down;
            enum direction d3 =  left;
            enum direction d4 =  right; // 枚举标识符作为整型常量来处理。赋值为3，而不是 right 这个名字
            
            NSLog(@"%i",d1);    // 0
            NSLog(@"%i",d2);    // 2
            NSLog(@"%i",d3);    // 3
            NSLog(@"%i",d4);    // 4
            
            NSLog(@"%i",up);    // 0
            NSLog(@"%i",down);  // 1
            NSLog(@"%i",left);  // 2
            NSLog(@"%i",right); // 3
            
            if(d4 == 3){
                NSLog(@"d4 is 3");
            }
            
            if (d4 == right) {
                NSLog(@"d4 is right = %i",right);
            }
            
            switch (d4) {
                case up:
                    NSLog(@"d4 is up");
                    break;
                    
                case down:
                    NSLog(@"d4 is down");
                    break;
                    
                case left:
                    NSLog(@"d4 is left");
                    break;
                    
                case right:
                    NSLog(@"d4 is right");
                    break;
                    
                default:
                    break;
            }
            
            // 使用类型转换符，可以明确给枚举变量设定一个整数值。但不要这么做，因为这丧失了枚举带来的好处：整数值与有含义的名称对应起来。
            enum direction d5 = (enum direction)(d4 + 5);
            NSLog(@"d5 is %i",d5); // 8
        }
        
        {
            enum direction {up,down,left = 10,right};
            NSLog(@"%i",up);    // 0
            NSLog(@"%i",down);  // 1
            NSLog(@"%i",left);  // 10
            NSLog(@"%i",right); // 11
        }
        {
            enum direction {up = 1,down = 1,left = 10,right};
            NSLog(@"%i",up);    // 1
            NSLog(@"%i",down);  // 1
            NSLog(@"%i",left);  // 10
            NSLog(@"%i",right); // 11
        }
        
        {
            // 指定整数类型
            enum iPhoneModels : unsigned short int {iPhone,iPhone3G,iPhone5};
        }
        
        {
            // 枚举数据类型未命名，同时声明一个该e类型的一个变量direction。
            enum {up,down,left,right} direction;
            NSLog(@"direction is %i",direction); // 0
            
            direction = right;
            NSLog(@"direction is %i",direction); // 3
        }
    }
    return 0;
}
*/
