//
//  Fraction_2_main.m
//  test-Object-C
//
//  Created by hades on 2021/7/2.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Fraction_2.h"

/*int main(int argc, const char* argv[]){
    @autoreleasepool {
        
        // alloc是allocate的缩写。
        // alloc：创建对象 —— 分配内存存储空间，获得该类的实例。
        Fraction_2 *myFraction = [Fraction_2 alloc];
        // init : 初始化该类的实例的变量。
        myFraction = [myFraction init];
        
        // 等价于
        // 创建对象，并初始化。
        // myFraction = [[Fraction alloc]init];
        
        // 使用set
        [myFraction setDenominator:6];
        [myFraction setNumerator:5];
        [myFraction print]; // numerator is 5, denominator is 6
        
        // 使用点运算符访问属性
        myFraction.denominator = 10;
        myFraction.numerator = 50;
        [myFraction print]; // numerator is 50, denominator is 10
        
        // 直接访问对象的变量
        // 使用点运算符访问属性
        NSLog(@"param is %i, %i", myFraction.denominator,myFraction.numerator);     // param is 10, 50
        
        // 通过对象的get方法来访问对象的变量
        NSLog(@"param is %i, %i", [myFraction denominator],[myFraction numerator]); // param is 10, 50
        
        [myFraction setTo:1 over:5];
        [myFraction print]; // numerator is 1, denominator is 5
        
        [myFraction setNumerator:20 andDenominator:30];
        [myFraction print]; // numerator is 20, denominator is 30
        
        // 不带参数名的方法：调用方法
        [myFraction set:1 :3];
        [myFraction print]; // numerator is 1, denominator is 3
        
        Fraction_2 *myFraction2 = [[Fraction_2 alloc] init];
        [myFraction2 set:5 :6];
        [myFraction add: myFraction2];
        [myFraction print]; // numerator is 7, denominator is 6
        
        [myFraction setNumerator:20 andDenominator:30];
        [myFraction reduce];
        [myFraction print]; // numerator is 2, denominator is 3
        
        Fraction_2 *result = [myFraction add2:myFraction2];
        [result print]; // numerator is 10, denominator is 9
    }
    return 0;
}
*/
