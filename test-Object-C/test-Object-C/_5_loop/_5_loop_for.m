//
//  _5_loop.m
//  test-Object-C
//
//  Created by hades on 2021/7/1.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*int main(int argc, const char* argv[] ){
    @autoreleasepool {
        // for
        {
            int i,triangularNumber = 0;
            
            // 设置i 初始值
            for (i = 0; i <= 10; i = i+1){
                triangularNumber +=i;
                // NSLog(@"%i",triangularNumber);  // 20100
                
                // 设置字宽为2，不够补空格。向右对齐。默认是向左对齐。
                NSLog(@"%2i",triangularNumber);  // 20100
            }
            NSLog(@"resut : %i",triangularNumber);  // 20100
        }
        
        // 键盘输入
        {
            int i,num,triangularNumber = 0;

            NSLog(@"Please input the name");  // 第一个参数是NSString，因此要加@
            // 第一个参数是C风格的字符串，因此，不用加@s
            scanf("%i",&num);   // & 是一个运算符，指定输入的值存在哪里

            // 设置i 初始值
            for (i = 0; i <= num; i = i+1){
                triangularNumber +=i;
            }
            NSLog(@"resut : %i",triangularNumber);
        }
        
        // 嵌套的for 循环
        {
            int i , j, result = 0;
            for(i = 0; i < 5; i++){
                for (j =0; j<=i; j++){
                    result += j;
                }
            }
            NSLog(@"resut : %i",result);    // 20
        }
        
        // for 循环的变体
        {
            int result = 0;
            // 使用逗号分隔表达式
            // i，j被定义在 for 中
            for (int i = 0, j = 0; i < 5 ; i++){
                result += j * i;
                j++;
            }
            NSLog(@"resut : %i",result);   // 30
        }
        
        // for 循环的变体
        {
            int result = 0;
            // 使用逗号分隔表达式
            // i，j被定义在 for 中
            for (int i = 0, j = 100; i < 10; ++i, j -= 10 ){
                result += i+j;
            }
            NSLog(@"resut : %i",result);    // 595
        }
        
        // for 循环的变体
        {
            int i = 0;
            int result = 0;
            // i 已经提前设置了初始值，因此，此处直接使用了；
            for (; i < 5 ; i++){
                result += i;
            }
            NSLog(@"resut : %i",result);   // 10
        }
        
        // for 循环变体
        {
            // TODO: 在对象集合上执行快速枚举
        }
        
        //  for 循环至少执行 0 次。
        {
            for (int i = 0; i > 0 ; i++){
                NSLog(@"for when i =%i",i );
            }
        }
    }
    return 0;
}*/
