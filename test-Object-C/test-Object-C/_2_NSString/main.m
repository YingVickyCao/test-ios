//
//  main.m
//  test-Object-C
//
//  Created by hades on 2020/12/14.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]){
    @autoreleasepool {
        // C语言 String
        char * s1 = "S1";
        NSLog(@"%s",s1);
        
        // Object-C String
        NSString *s2 = @"S2";
        // 对象方法
        NSString *s3 = [[NSString alloc] initWithString:s2]; // 根据已知 String，创建新String
        NSString *s4 = [[NSString alloc]initWithUTF8String:s1]; // 用C语言 String，创建新String
        NSString *s5 = [[NSString alloc]initWithFormat:@"AB%c - %d - %@",'m',25,@"过好日子"]; // 以格式化的方式，创建新String
        NSLog(@"%@",s2);
        NSLog(@"%@",s3);
        NSLog(@"%@",s4);
        NSLog(@"%@",s5);
        
         // 类方法
        NSString *s6 = [NSString stringWithString:s2]; // 根据已知 String，创建新String
        NSString *s7 = [NSString stringWithUTF8String:s1]; // 用C语言 String，创建新String
        NSString *s8 = [NSString stringWithFormat:@"AB%c - %d - %@",'m',25,@"过好日子"]; // 以格式化的方式，创建新String
        NSLog(@"%@",s6);
        NSLog(@"%@",s7);
        NSLog(@"%@",s8);
        NSLog(@"%@",s5);
    }
    return 0;
}
