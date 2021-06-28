//
//  main.m
//  test-Object-C
//
//  Created by hades on 2020/12/18.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
int main(int argc, const char * argv[]){
    @autoreleasepool {
        
        // 封装: C 语言 -> OC 数据
        NSNumber *intNums = [[NSNumber alloc]initWithInt:1];
        NSNumber *charNums = [[NSNumber alloc]initWithChar:'C'];
        NSNumber *floatNums = [[NSNumber alloc]initWithFloat:5.6f];
        NSNumber *doubleNums = [[NSNumber alloc]initWithDouble:10.5];
        
        NSArray *array = [[NSArray alloc]initWithObjects:intNums,charNums,floatNums,doubleNums, nil];
        
        // 是否相等
        NSNumber *intNums2 = [[NSNumber alloc]initWithInt:2];
        BOOL flag = [intNums isEqualToNumber:intNums2];
        NSLog(@"%d",flag);  // 0
        
        // 比较
        NSComparisonResult *result = [intNums compare:intNums2];
        if (result == NSOrderedAscending) {
            NSLog(@"num1 < num2");
        }else if(result == NSOrderedSame){
            NSLog(@"num1 == num2");
        }
        else if(result == NSOrderedDescending){
            NSLog(@"num1 > num2");
        }
        
        
        // 解封装: OC 数据 -> C 语言
        int a = [intNums intValue];
        NSLog(@"%d",a);  // 1
        
        char c = [charNums charValue];
        NSLog(@"%c",c);  // C
        
        float f = [floatNums floatValue];
        NSLog(@"%f",f);  // 5.600000
        
        double d = [doubleNums doubleValue];
        NSLog(@"%lf",d);  // 10.500000
    }
    return 0;
}
*/
