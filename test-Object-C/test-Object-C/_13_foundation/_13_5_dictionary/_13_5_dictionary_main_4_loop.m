//
//  _13_5_dictionary_main_4_loop.m
//  test-Object-C
//
//  Created by hades on 2021/7/23.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char* argv[]){
    @autoreleasepool {
        // https://blog.csdn.net/lxlzy/article/details/49646949
        // index : 140735179990516 For-in Time: 0.015974 ms
        // index : 140735179990516 enumerateKeysAndObjectsUsingBlock Time: 0.005007 ms
        // 结论：遍历字典，enumerateKeysAndObjectsUsingBlock速度更快，也更优雅。

        NSDictionary *testDictionary =
        @{
          @"Auther" : @"南望青天",
          @"Game" : @"Dota",
          @"App" : @"麦刀塔",
          @"Market" : @"AppStore"
          };
        
        //For - in
        NSMutableArray *forInArry = [NSMutableArray array];
        double date_s = CFAbsoluteTimeGetCurrent();
        NSArray *keys = [testDictionary  allKeys];
        for (NSString *key in keys) {
            NSString *Value = testDictionary[key];
            [forInArry addObject:Value];
        }
        double date_current = CFAbsoluteTimeGetCurrent() - date_s;
        NSLog(@"index : %ld For-in Time: %f ms",(long)index,date_current * 1000);
        
        //enumerateKeysAndObjectsUsingBlock
        date_s = CFAbsoluteTimeGetCurrent();
        NSMutableArray *enumArry = [NSMutableArray array];
        [testDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            [enumArry addObject:obj];
        }];
        date_current = CFAbsoluteTimeGetCurrent() - date_s;
        NSLog(@"index : %ld For-in Time: %f ms",(long)index,date_current * 1000);
        
        NSLog(@"ForInArr: %@",forInArry);
        NSLog(@"enumArry: %@",enumArry);
    }
    return 0;
}
