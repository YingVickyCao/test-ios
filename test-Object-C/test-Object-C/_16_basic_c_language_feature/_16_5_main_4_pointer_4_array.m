//
//  _16_5_main_4_pointer_4_array.m
//  test-Object-C
//
//  Created by hades on 2021/7/16.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
// 在函数中，将数组声明为“int 数组”类型，或 “指针”类型
int arraySum(int *array, int len){
//int arraySum(int array[], int len){
    int sum = 0;
    int *ptr;
    int *endPtr = array + len;
    // ptr = array;  ptr and array ： 指向数组的第一个元素的指针
    // ptr = array; 等价方式 ptr = &array[0];
     for (ptr = array; ptr < endPtr; ++ptr) {
//    for (ptr = &array[0]; ptr < endPtr; ++ptr) {
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
        
        int *ptr = values;
        // 对于指向同一个数组的两个指针变量，可以做比较。
        // e.g., 将指针 ptr 与指向最后一个元素的指针相比较，判断它是否超出数组的范围？
        if (ptr < &values[9]) {
            NSLog(@"没有超数组范围"); // invoked
        }
        // 等价于
        if(ptr < values + 9){
            NSLog(@"没有超数组范围"); // invoked
        }
        
        // 移动数组的指针指向位置
        // 指向数组的指针的从 0 移动到 1 位置
        ptr ++;
        NSLog(@"%i",*ptr);  // 7
    }
    return 0;
}
*/
