//
//  _16_5_main_4_pointer_4_array.m
//  test-Object-C
//
//  Created by hades on 2021/7/16.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

int arraySum(int array[], int len){
    int sum = 0;
    int *ptr;
    int *endPtr = array + len;
    // ptr = array;  ptr and array ： 指向数组的第一个元素的指针
    // for (ptr = array; ptr < endPtr; ++ptr) {
    
    // ptr = array; 等价方式 ptr = &array[0];
    for (ptr = &array[0]; ptr < endPtr; ++ptr) {
        sum += *ptr;
    }
    return sum;
}

int main(int argc, const char* argv[]){
    @autoreleasepool {
        int arraySum(int array[], int len);
        int values[10] = {3,7,-9,3,6,-1,7,9,1,-5};
        int result = arraySum(values,10);
        NSLog(@"%i",result);    // 21
    }
    return 0;
}
