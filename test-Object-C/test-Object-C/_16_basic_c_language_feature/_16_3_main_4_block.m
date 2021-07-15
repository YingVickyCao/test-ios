//
//  _12_3_main_block.m
//  test-Object-C
//
//  Created by hades on 2021/7/15.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

// 定义块是全局的
int (^sum)(int , int)=
^(int a, int b){
    return a + b;
};

/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        // 定义块是局部的。
        // 将块付给n变量print_message
        // 赋值语句以分号结束。
        // 块可以访问在其范围内定义的值。变量的值同时作为块中定义的值。
        int foo = 10;
        void (^print_message)(void)=
        ^(void){
            NSLog(@"Hi, This is a block example");
            // 因为变量foo在定义块的同时已经具有了值，而不是在执行时的时候。
            NSLog(@"foo is %i",foo);    // foo is 10
            
            // 不可以在块内部修改已经定义过的值，否则出现编译错误。
//            foo = 20; // ERROR：Variable is not assignable (missing __block type specifier)
        };
        
        foo = 15;
        print_message();
        
        
        int result = sum(10,20);
        NSLog(@"%i",result);    // 30
    }
    return 0;
}
*/
