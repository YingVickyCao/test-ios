//
//  _12_2_function.m
//  test-Object-C
//
//  Created by hades on 2021/7/15.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
void printMessage(void){
    NSLog(@"Programming is fun");
}

int sum(int a, int b){
    return a + b;
}


// Error result :
//sizeof(values)=8
//sizeof(values[0])=4
//size=2
// Warning : Sizeof on array function parameter will return size of 'int *' instead of 'int []'
int minNum(int values[]){
    int size = sizeof(values)/sizeof(values[0]);
    NSLog(@"sizeof(values)=%lu",sizeof(values));
    NSLog(@"sizeof(values[0])=%lu",sizeof(values[0]));
    NSLog(@"size=%i",size);
    
    int minValue = values[0];
    for (int i = 0; i < (size-1); i++) {
        if (values[i] < minValue) {
            minValue = values[i];
        }
    }
    return minValue;
}

int minNum_2(int* values,int length){
    int minValue = values[0];
    for (int i = 0; i < (length-1); i++) {
        if (values[i] < minValue) {
            minValue = values[i];
        }
    }
    return minValue;
}

// 参数不固定
int main(int argc, const char* argv[]){
    @autoreleasepool {
        printMessage();
        int sumResult = sum(1, 5);
        NSLog(@"%i",sumResult); // 6
        
        int nums[] = {4,9,6,1,26};
        //
//        sizeof(nums)=20
//        sizeof(nums[0])=4
//        size=5
        //
        int size = sizeof(nums)/sizeof(nums[0]);
        NSLog(@"sizeof(nums)=%lu",sizeof(nums));
        NSLog(@"sizeof(nums[0])=%lu",sizeof(nums[0]));
        NSLog(@"size=%i",size);
        
        int min = minNum(nums);
        NSLog(@"%i",min); // 4 : not correct
        
        min = minNum_2(nums,size);
        NSLog(@"%i",min); // 1 : right
    }
    return 0;
}
*/
