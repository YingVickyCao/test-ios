//
//  _13_4_dictionary_main_4_mutable.m
//  test-Object-C
//
//  Created by hades on 2021/8/2.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        
        // 使用类方法创建一个空的可变字典
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        // add key - value 到 字典
        [dict setObject:@"value 1" forKey:@"key_1"];
        dict[@"key_2"] = @"value 2";
        // key 可以相同，但value 会覆盖前面设置的值。
        dict[@"key_2"] = @"value 3";
        
        // value 虽然可以是nil，但是根本检索不出来，就像没有存一样。
        dict[@"key_4"] = nil;
        
        // key 不能是nil
        // ERROR:*** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '*** -[__NSDictionaryM setObject:forKeyedSubscript:]: key cannot be nil'
        // dict[nil] = @"value 3";
        
        // get value by key
        NSLog(@"%@",[dict objectForKey:@"key_1"]);  // value 1
        NSLog(@"%@",dict [@"key_2"]);  // value 2
        
        // 遍历字典
        for (NSString *key  in dict) {
            NSLog(@"%@:%@",key,[dict objectForKey:key]);
        }
    }
    return 0;
}
*/
