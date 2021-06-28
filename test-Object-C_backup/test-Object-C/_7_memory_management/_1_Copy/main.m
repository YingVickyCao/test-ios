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
        // 字符串拷贝，得到的结果类型，以调用的拷贝方法为基准.
        
        NSString *str1 = [str copy]; // 得到一个不可变的字符串
        // ERROR:] *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[NSTaggedPointerString appendString:]: unrecognized selector sent to instance 0x6132cee6d5ff75'
//        NSMutableString *str1 = [str copy]; // 得到一个不可变的字符串, 不可改变，因此运行时发生错误。
//        [str1 appendString:@"123"];
        
        NSMutableString *str2 = [str mutableCopy];// 得到一个可变的字符串
        [str2 appendString:@"123"];
        NSLog(@"%@",str1);  // Hi
        NSLog(@"%@",str2);  // Hi123
    }
    return 0;
}
