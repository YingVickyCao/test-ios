//
//  _16_5_main_4_pinter.m
//  test-Object-C
//
//  Created by hades on 2021/7/16.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

void exchange(int *ptr1, int *ptr2){
    int temp;
    temp = *ptr1;
    *ptr1 = *ptr2;
    *ptr2 = temp;
}
/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        // 直接访问
        int count  = 10;
        
        // 间接访问
        // 定义变量intPtr，它是int的指针类型，它可以间接访问一个或多个整型变量的值
        int *intPtr;
        
        // &是地址运算符，用来取得变量的指针。目的是建立指针变量intPtr与变量count之间的间接引用。
        intPtr = &count;
        
        // *是间接寻址运算符。表示通过指针变量intPtr引用变量count的值。
        int x = *intPtr;
        NSLog(@"count=%i",count);   // 10
        NSLog(@"x=%i",x);           // 10
        
        count = 20;
        NSLog(@"count=%i",count);   // 20
        NSLog(@"x=%i",x);           // 10
        
        *intPtr = 100;
        NSLog(@"count=%i",count);   // 100
        
        // 按一般方式将指针作为参数传递给方法或函数。
        int n1 = -5, n2 = 66, *p1 = &n1, *p2 = &n2;
        void exchange(int *ptr1, int *ptr2);
        exchange(p1, p2);
        NSLog(@"n1=%i,n2=%i",n1,n2);    // n1=66,n2=-5
        
        exchange(&n1, &n2);
        NSLog(@"n1=%i,n2=%i",n1,n2);    // n1=-5,n2=66
    }
    return 0;
}
*/
