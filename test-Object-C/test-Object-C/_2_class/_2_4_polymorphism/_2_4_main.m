//
//  _2_4_main.m
//  test-Object-C
//
//  Created by hades on 2021/7/5.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Complex.h"
#import "Fraction_2.h"

int main(int argc, const char* argv[]){
    @autoreleasepool {
        // 多态
        {
            Fraction_2 *f1 = [[Fraction_2 alloc]init];
            Fraction_2 *f2 = [[Fraction_2 alloc]init];
            Fraction_2 *fracResult;
            [f1 setTo:1 over:10];
            [f2 setTo:2 over:15];
            fracResult = [f1 add2:f2]; // 多态
            [fracResult print]; // 多态 // numerator is 9, denominator is 50
            
            Complex *c1 = [[Complex alloc]init];
            Complex *c2 = [[Complex alloc]init];
            Complex *compResult;
            [c1 setReal:18.0 andImaginary:2.5];
            [c2 setReal:-5.0 andImaginary:3.2];
            compResult = [c1 add2: c2]; // 多态
            [compResult print]; // 多态 // 13 + 5.7
        }
        
        
        // 动态类型
        {
            // 编译时检查
            Fraction_2 *f1 = [[Fraction_2 alloc]init];
            [f1 setTo:1 over:10];
            
            Complex *c1 = [[Complex alloc]init];
            [c1 setReal:18.0 andImaginary:2.5];
            
            id dataValue = f1;
            // 运行时检查：因为存储在id变量中的对象类型在编译时无法确定，因此一些测试推迟到运行时（执行时）进行。
            [dataValue print];  // numerator is 1, denominator is 10
            
            dataValue = c1;
            [dataValue print];  // 18 + 2.5
        }
        
        // 检查动态类型
        {
            
        }
    }
    return 0;
}
