//
//  _13_5_set_main_4_NSIndexSet.m
//  test-Object-C
//
//  Created by hades on 2021/8/3.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        
        {
            NSLog(@"initWithIndex --->");
            NSIndexSet *set = [[NSIndexSet alloc]initWithIndex:2];
            NSLog(@"%@",set); // ] <_NSCachedIndexSet: 0x100705b30>[number of indexes: 1 (in 1 ranges), indexes: (2)]
            NSLog(@"%lu",(unsigned long)[set count]);  // 1
            // item is 2
            [set enumerateIndexesUsingBlock:^(NSUInteger idx, BOOL * _Nonnull stop) {
                NSLog(@"item is %lu",(unsigned long)idx);
            }];
            NSLog(@"initWithIndex <---");
            NSLog(@"\n");
        }
        {
            NSLog(@"initWithIndexesInRange --->");
            // 创建一下下标开始数是2，长度为4，结果是：2、3、4、5
            NSIndexSet *set = [[NSIndexSet alloc]initWithIndexesInRange:NSMakeRange(2, 4)];
            // TODO: NSIndexSet? _NSCachedIndexSet?
            NSLog(@"%@",set); // <NSIndexSet: 0x10076ee20>[number of indexes: 4 (in 1 ranges), indexes: (2-5)]
            NSLog(@"%lu",(unsigned long)[set count]);   // 4
            // item is 2
            // item is 3
            // item is 4
            // item is 5
            [set enumerateIndexesUsingBlock:^(NSUInteger idx, BOOL * _Nonnull stop) {
                NSLog(@"item is %lu",(unsigned long)idx);
            }];
            NSLog(@"initWithIndexesInRange <---");
            
            //        NSUInteger index;
            // TODO: 死循环？
            // https://stackoverflow.com/questions/3773180/how-to-get-indexes-from-nsindexset-into-an-nsarray-in-cocoa
            //        for (index = [set1 firstIndex]; index != NSNotFound; [set1 indexGreaterThanIndex:index]) {
            //            NSLog(@"print index");
            //
            //        }
            
        }
        
        {
            // 快速初始化数组
            NSArray *arr1 = @[@"One", @"Two thing", @"three", @"four test", @"Five", @"six"];
            
            NSIndexSet *indexSet = [[NSIndexSet alloc]initWithIndexesInRange:NSMakeRange(2, 4)];
            // 提取连续下标子数组
            NSArray *arr2 = [arr1 objectsAtIndexes: indexSet];
            NSLog(@"arr1:%@", arr1);
            // three,"four test", Five,six
            NSLog(@"arr2:%@", arr2);
        }
    }
    return 0;
}
*/
