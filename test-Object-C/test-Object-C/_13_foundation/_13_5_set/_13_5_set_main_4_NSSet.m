//
//  _13_5_set_main.m
//  test-Object-C
//
//  Created by hades on 2021/8/3.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
@interface NSSet (Printing)
-(void)print;
@end

@implementation NSSet (Printing)

- (void)print{
    for (NSNumber *item in self) {
        NSLog(@"%li",(long)[item integerValue]);
    }
    NSLog(@"\n");
}
@end

int main(int argc, const char* argv[]){
    @autoreleasepool {
        NSMutableSet *set1 = [NSMutableSet setWithObjects:@1,@3,@5,@10, nil];
        NSSet *set2 = [NSSet setWithObjects:@-5,@100,@3,@5, nil];
        NSSet *set3 = [NSSet setWithObjects:@12,@200,@3, nil];
        
        [set1 print];
        [set2 print];
        [set3 print];
        
        
         // 相等性测试
        if ([set1 isEqualToSet:set2] == YES) {
            NSLog(@"set1 equals set2");
        }else{
            NSLog(@"set1 is not equal to set2");
        }
        
        //
        if ([set1 containsObject:@10] == YES) {
            NSLog(@"set1 contains 10");
        }
        else{
            NSLog(@"set1 does not contains 10");
        }
        
        if ([set2 containsObject:@10] == YES) {
            NSLog(@"set2 contains 10");
        }
        else{
            NSLog(@"set2 does not contains 10");
        }
        
        // 添加一个对象
        [set1 addObject:@6];
        NSLog(@"\n");
        [set1 print];
        
        // 移除一个对象
        [set1 removeObject:@1];
        NSLog(@"\n");
        [set1 print];
        
    
        // 获得两个集合的交集
        [set1 unionSet:set3];
        [set1 print];
        
        // 获得两个集合的并集
        [set1 intersectSet:set2];
        // 3,5
        [set1 print];
    }
    return 0;
}
*/
