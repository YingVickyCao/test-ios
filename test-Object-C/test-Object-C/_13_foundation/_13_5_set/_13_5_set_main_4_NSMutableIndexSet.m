//
//  _13_5_set_main_4_NSMutableIndexSet.m
//  test-Object-C
//
//  Created by hades on 2021/8/5.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        NSMutableIndexSet *indexSet = [[NSMutableIndexSet alloc]init];
        [indexSet addIndex:3];
        [indexSet addIndex:0];
        [indexSet addIndex:2];
        // 0,2
        NSLog(@"%@",indexSet);
        
        NSLog(@"size is %lu",(unsigned long)[indexSet count]); // count is 3
        // 数值必须唯一。若存储已经包含的index，add 操作会覆盖已存储的值，等于没add
        [indexSet addIndex:3];
        NSLog(@"size is %lu",(unsigned long)[indexSet count]); // count is 3
        
        NSLog(@"Does it contain 2 ? %hhd",[indexSet containsIndex:2]); // 1
        
        NSLog(@"first index is %lu",[indexSet firstIndex]); // 0
        NSLog(@"last index is %lu",[indexSet lastIndex]); // 3
        
        NSArray *arr1 = @[@"One", @"Two thing", @"three", @"four test", @"Five", @"six"];
        // 根据下标获取数组
        NSArray *arr2 = [arr1 objectsAtIndexes: indexSet];
        NSLog(@"arr1:%@", arr1);
        NSLog(@"arr2:%@", arr2); //  One,three，"four test"
    }
}
*/
