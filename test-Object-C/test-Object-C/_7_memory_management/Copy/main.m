//
//  main.m
//  test-Object-C
//
//  Created by hades on 2020/12/24.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
    @autoreleasepool {
        NSString *str = [NSString stringWithFormat:@"Hi"];
        
        // copy:不可变copy
        // mutableCopy： 可变copy
        NSString *str1 = [str copy]; // 得到一个不可变的字符串
        NSMutableString *str2 = [str mutableCopy];// 得到一个可变的字符串
        
        [str2 appendString:@"123"];
        NSLog(@"%@",str1);
        NSLog(@"%@",str2);
        //字符串拷贝，得到的结果类型，以调用的拷贝方法为基准.
    }
    return 0;
}
