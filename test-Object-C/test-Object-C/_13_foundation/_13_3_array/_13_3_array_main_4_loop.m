//
//  _13_3_main_array_4_loop.m
//  test-Object-C
//
//  Created by hades on 2021/7/23.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        {
            //  https://blog.csdn.net/lxlzy/article/details/49646949
            //  Sum : 1783293664 ForLoop Time: 25.202036 ms
            //  Sum : 1783293664 For-in Time: 17.147064 ms
            //  Sum : 1783293664 enumerateObjectsUsingBlock Time: 41.741014 ms
            //  结论：遍历一个数组的时候使用For-in最快
            NSMutableArray *test = [NSMutableArray array];
            for (int i = 0; i < 1000000; i ++) {
                [test addObject:@(i)];
            }
            
            __block int sum = 0;
            double date_s = CFAbsoluteTimeGetCurrent();
            for (int i = 0; i < test.count; i ++) {
                sum += [test[i] integerValue];
            }
            double date_current = CFAbsoluteTimeGetCurrent() - date_s;
            
            NSLog(@"Sum : %d ForLoop Time: %f ms",sum,date_current * 1000);
            
            
            sum = 0;
            date_s = CFAbsoluteTimeGetCurrent();
            for (NSNumber *num in test) {
                sum += [num integerValue];
            }
            date_current = CFAbsoluteTimeGetCurrent() - date_s;
            NSLog(@"Sum : %d For-in Time: %f ms",sum,date_current * 1000);
            
            
            sum = 0;
            date_s = CFAbsoluteTimeGetCurrent();
            [test enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                sum += [obj integerValue];
            }];
            date_current = CFAbsoluteTimeGetCurrent() - date_s;
            NSLog(@"Sum : %d enumrateBlock Time: %f ms",sum,date_current * 1000);
        }
        
        {
            // index : 9999989 For-in Time: 657.889962 ms
            // index : 9999989 enumerateBlock Time: 433.977008 ms
            // index : 9999989 enumerateObjectsWithOptions Time: 225.367904 ms
            // 结论：对于数组，通过Value找出Index，enumerateObjectsWithOptions最快。
            NSMutableArray *test = [NSMutableArray array];
            for (int i = 0; i < 10000000; i ++) {
                [test addObject:@(i + 10)];
            }
            
            //For-in
            __block NSInteger index = 0;
            double date_s = CFAbsoluteTimeGetCurrent();
            for (NSNumber *num in test) {
                if ([num integerValue] == 9999999) {
                    index = [test indexOfObject:num];
                    break;
                }
            }
            double date_current = CFAbsoluteTimeGetCurrent() - date_s;
            NSLog(@"index : %ld For-in Time: %f ms",(long)index,date_current * 1000);
            
            //enumerateObjectsUsingBlock
            index = 0;
            date_s = CFAbsoluteTimeGetCurrent();
            [test enumerateObjectsUsingBlock:^(id num, NSUInteger idx, BOOL *stop) {
                if ([num integerValue] == 9999999) {
                    index = idx;
                    *stop = YES;
                }
            }];
            date_current = CFAbsoluteTimeGetCurrent() - date_s;
            NSLog(@"index : %ld enumerateBlock Time: %f ms",(long)index,date_current * 1000);
            
            //enumerateObjectsWithOptions
            index = 0;
            date_s = CFAbsoluteTimeGetCurrent();
            [test enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id num, NSUInteger idx, BOOL *stop) {
                if ([num integerValue] == 9999999) {
                    index = idx;
                    *stop = YES;
                }
            }];
            date_current = CFAbsoluteTimeGetCurrent() - date_s;
            NSLog(@"index : %ld enumerateObjectsWithOptions Time: %f ms",(long)index,date_current * 1000);
        }
    }
    return 0;
}
*/
