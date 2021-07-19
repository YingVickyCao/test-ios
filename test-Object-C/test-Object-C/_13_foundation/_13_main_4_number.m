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
        NSInteger myInt;
        
        // integer
        intNumber = [NSNumber numberWithInteger:100];
        myInt = [intNumber integerValue];
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
        
        // 发生错误
        NSLog(@"%li",[myNumber integerValue]);  // 12
    }
    return 0;
}
