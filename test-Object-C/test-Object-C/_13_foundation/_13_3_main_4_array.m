//
//  _13_3_main_4_array.m
//  test-Object-C
//
//  Created by hades on 2021/7/20.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
int main(int argc,const char* argv[]){
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
        
        // array[index] = object
        NSMutableArray *nums = [NSMutableArray array];
        for (int i  = 0; i< 3; ++i) {
            // 因为基本数据类型不能存储在数组之类的集合中，因此，需要构造 NSNumber 对象。
            // array[index] = object
            nums[i] = @(i);
        }
        
        for (int i  = 0; i< nums.count; ++i) {
            NSLog(@"%@",nums[i]);
        }
        // 如何打印数组？对于数组中的每一个元素，NSLog将使用属于每个元素类的description方法。NSNumber类由自定义的description方法实现。
        // 如果使用的是从NSObject对象继承的默认方法，获取到的是对象的类和地址。
        NSLog(@"%@",nums);
        
        NSMutableArray *strings = [NSMutableArray array];
        for (int i = 0; i < 5; ++i) {
            // array[index] = object
//            strings[i] =  [NSString stringWithFormat:@"Item %i",i];
            [strings setObject:[NSString stringWithFormat:@"Item %i",i] atIndexedSubscript:i];
        }
        for (int i  = 0; i< strings.count; ++i) {
            NSLog(@"%@",strings[i]);
        }
        
        // 使用一种简单方法，快速打印数组元素
//        (
//         "Item 0",
//         "Item 1",
//         "Item 2",
//         "Item 3",
//         "Item 4"
//         )
        NSLog(@"%@",strings);
    }
    return 0;
}
*/
