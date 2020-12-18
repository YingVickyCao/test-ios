//
//  main.m
//  test-Object-C
//
//  Created by hades on 2020/12/17.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
int main(int argc, const char * argv[]){
    @autoreleasepool {
        {
            // Creare
            NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3", nil];
//            NSLog(@"%@",array); // 1, 2, 3
        }
        {
            // 增
            NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3", nil];
//            NSLog(@"%@",array); // 1, 2, 3

            
            [array addObject:@"4"];
//            NSLog(@"%@",array); // 1, 2, 3, 4
        }
        {
            // 删除
            NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3", nil];
//            NSLog(@"%@",array); // 1, 2, 3
            
            [array removeObject:@"3"];
//            NSLog(@"%@",array);    // 1, 2
        }
        {
            // 增
            NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3", nil];
//            NSLog(@"%@",array); // 1, 2, 3
            
            [array removeAllObjects];
//            NSLog(@"%@",array); // empty
        }
        
        {
            // 交换位置
            
            NSMutableArray *array = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3", nil];
//            NSLog(@"%@",array); // 1, 2, 3
            
            [array exchangeObjectAtIndex:0 withObjectAtIndex:2];
//            NSLog(@"%@",array); // 3, 2, 1
        }
        
        {
            
            NSString *str = @"This is a OC example";
            
            // // string -> array ： 拆分字符串
            NSArray *array = [str componentsSeparatedByString:@" "];
            // This,
            // is,
            // a,
            // OC,
            // example
            NSLog(@"%@",array);
            
            // 反序
            NSMutableArray *array2 = [[NSMutableArray alloc]init];
            NSEnumerator *iterator = [array reverseObjectEnumerator];
            id object = nil;
            while (object = [iterator nextObject]) {
                [array2 addObject:object];
            }
            // example,
            // OC,
            // a,
            // is,
            // This
           NSLog(@"%@",array2);
        
            // array -> string
            NSString *str2 = [array2 componentsJoinedByString:@" "];
             // example OC a is This
            NSLog(@"%@",str2);
        }
    }
    return  0;
}
*/
