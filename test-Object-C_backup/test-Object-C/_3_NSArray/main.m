//
//  test_NSArray.m
//  test-Object-C
//
//  Created by hades on 2020/12/17.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface S : NSObject
@end

@implementation S
- (NSString *)description{
    return @"This is S ";
}
@end

/*
 int main(int argc, const char * argv[]){
    @autoreleasepool {
        // 1  创建
        S *s = [[S alloc] init];
        NSArray *array = [[NSArray alloc]initWithObjects:@"A",@"B",s,@"C",nil];
 
         //A,
         //B,
         //"<S: 0x100506f10>",  =>  "This is S ",
         //C
        NSLog(@"%@",array);
        
        NSArray *array2 = [[NSArray alloc] initWithArray:array];
        NSLog(@"%@",array2);
    
        NSArray *array3 = [[NSArray alloc]initWithArray:array copyItems:NO ];
        NSLog(@"%@",array3);
        
    // TODO:
//        NSArray *array4 = [[NSArray alloc]initWithArray:array copyItems:YES ];
//        NSLog(@"%@",array4);
        
        
        // 遍历
        // Way 1 : 枚举器遍历法
        NSEnumerator *enumerator = [array objectEnumerator ];
        id object;
        while (object = [enumerator nextObject]) {
            NSLog(@"%@",object);
        }
        
        // Way 2 : 快速遍历法
        for (object in array) {
            NSLog(@"%@",object);
        }
        
        // Way 3 : i 遍历法 （C语言）
        NSInteger count = [array count];
        NSInteger i = 0;
        for (i; i<count; i++) {
             NSLog(@"%@",[array objectAtIndex:i]);
        }
    }
    return 0;
}
*/
