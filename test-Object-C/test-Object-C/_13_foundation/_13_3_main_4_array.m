//
//  _13_3_main_4_array.m
//  test-Object-C
//
//  Created by hades on 2021/7/20.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc,const char * argv[]){
    @autoreleasepool {
        // arrayWithObjects : 使用一些列对象作为元素创建数组
        // nil : 标记数组结束。它实际上不会存储在数组中
        NSArray *monthNames = [NSArray arrayWithObjects:@"1",@"2",@"3",@"April",@"May",@"6",@"7",@"August",@"9",@"10",@"11",@"December",nil];
        for (int i = 0; i < monthNames.count; ++i) {
            // 允许访问 [array objectAtIndex:index]
            // NSLog(@"%2i   %@",i+1, [monthNames objectAtIndex:i]);
            
            // 允许访问 array[index]
            NSLog(@"%2i   %@",i+1, monthNames[i]);
        }
        monthNames[3] = "J";
        
        NSArray *nums = [NSArray arrayWithObjects:@"1",@"2",@"3", nil];
        for (int i  = 0; i< nums.count; ++i) {
            NSLog(@"%@",nums[i]);
        }
    
        for (int i  = 0; i< nums.count; ++i) {
            NSLog(@"%@",nums[i]);
        }
    }
    return 0;
}
