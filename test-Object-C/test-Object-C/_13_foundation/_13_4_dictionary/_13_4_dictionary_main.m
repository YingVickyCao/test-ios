//
//  _13_4_dictionary_main.m
//  test-Object-C
//
//  Created by hades on 2021/7/29.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        // 创建一个不可变的字典
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"value 1", @"key_1",@"value 3",@"key_3",@"value 2",@"key_2",nil];
        for (NSString *key  in dict) {
            NSLog(@"%@:%@",key,[dict objectForKey:key]);
        }
        
        // 字典是无序的。从字典中取出的键也是无序的。
        // 如何以字母顺序显示词典中的内容？先取出词典中的所有键并排序，然后按照排好的键从字典中取出所有的值
        NSArray *keys  = [dict allKeys];    // 取出所有的键，组成数组
        keys =[keys sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {  // 排序键
            return [obj1 compare:obj2];
        }];
        
        for (NSString *key in keys){    // 按照排好的键从字典中取出所有的值
            NSLog(@"%@,%@",key,[dict objectForKey:key]);
        }
    }
    return 0;
}
*/
