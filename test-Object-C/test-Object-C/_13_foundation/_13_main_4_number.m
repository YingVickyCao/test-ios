//
//  _13_main_4_number.m
//  test-Object-C
//
//  Created by hades on 2021/7/19.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char* argv[]){
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        // integer
        intNumber = [NSNumber numberWithInteger:100];
        
        NSInteger myInt = [intNumber integerValue];
        // 将变量转换为long，并使用%li，目的是确保值能够传递而且正确显示，即使编译后是32位架构的。
        NSLog(@"%li",(long)myInt);   // 100
        
        // long
        myNumber = [NSNumber numberWithLong:0xabcdef];
        NSLog(@"%lx",[myNumber longValue]); // abcdef
        
        // char
        myNumber =  [NSNumber numberWithChar:'X'];
        NSLog(@"%c",[myNumber charValue]);  // X
        
        // float
        floatNumber = [NSNumber numberWithFloat:5.4];
        NSLog(@"%f",[floatNumber floatValue]);  // 5.400000
        
        // double
        myNumber = [NSNumber numberWithDouble:12.564457];
        NSLog(@"%f",[myNumber doubleValue]);    //  12.564457
        // NSNumber 的set和 get操作的值类型，必须一样，否则要么发生错误，要么数值遵循转换规则。
        NSLog(@"%li",(long)[myNumber integerValue]);  // 12
        
        // 验证两个函数是否相等
        if ([intNumber isEqualToNumber:floatNumber] == YES) {
            NSLog(@"Numbers are equal");
        }
        else{
            NSLog(@"Numbers are not equal"); // invoked
        }
        
        // 验证一个Number 是否小于、等于 或 大于 另一个Number
        NSLog(@"intNumber:%li",[intNumber integerValue]); // 100
        NSLog(@"myNumber:%f",[myNumber doubleValue]);   // 12.564457
        NSComparisonResult result =[intNumber compare: myNumber];
        if (result == NSOrderedDescending) {
            NSLog(@"First number is bigger than second");
        }
        else if (result == NSOrderedAscending){
            NSLog(@"First number is less than second");
        }
        else{
            NSLog(@"First number is equal to second");
        }
    }
    return 0;
}
