//
//  main.m
//  test-Object-C
//
//  Created by hades on 2020/12/14.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
int main(int argc, const char * argv[]){
    @autoreleasepool {
        // Create - 对象方法
        {
            // C语言 String
            char * s1 = "S1";
            NSLog(@"%s",s1);
            
            // Object-C String
            NSString *s2 = @"S2";
            // 对象方法
            NSString *s3 = [[NSString alloc]initWithString:s2]; // 根据已知 String，创建新String
            NSString *s4 = [[NSString alloc]initWithUTF8String:s1]; // 用C语言 String，创建新String
            NSString *s5 = [[NSString alloc]initWithFormat:@"AB%c - %d - %@",'m',25,@"过好日子"]; // 以格式化的方式，创建新String
            NSLog(@"%@",s2);
            NSLog(@"%@",s3);
            NSLog(@"%@",s4);
            NSLog(@"%@",s5);
        }
        
        // Create - 类方法
        {
            char * s1 = "S1";
            NSLog(@"%s",s1);
            
            // Object-C String
            NSString *s2 = @"S2";
            
            // 类方法
            NSString *s6 = [NSString stringWithString:s2]; // 根据已知 String，创建新String
            NSString *s7 = [NSString stringWithUTF8String:s1]; // 用C语言 String，创建新String
            NSString *s8 = [NSString stringWithFormat:@"AB%c - %d - %@",'m',25,@"过好日子"]; // 以格式化的方式，创建新String
            NSLog(@"%@",s6);
            NSLog(@"%@",s7);
            NSLog(@"%@",s8);
            
        }
        
    
        // 查
        {
            NSString *s1 = @"1234567";
            NSString *s2 = @"1234567";
            NSString *s3 = @"123";
            NSString *s3_2 = @"23";
            
            // 是否相等
            NSLog(@"%d",[s1 isEqualToString:s2]);   // 1 : =
            NSLog(@"%d",[s1 isEqualToString:s3]);   // 0 ：!=
            NSLog(@"%d",[s3 isEqualToString:s1]);   // 0 ：!=
            
            // 比较大小
            //    NSComparisonResult result=[s1 compare:s2];
            NSComparisonResult result=[s1 compare:s3];
            if(result == NSOrderedSame){
                //        NSLog(@"s1 = s2");
                NSLog(@"s1 = s3");
            }
            else if(result == NSOrderedAscending){
                //        NSLog(@"s1 < s2");
                NSLog(@"s1 < s3");
            }else if(result == NSOrderedDescending){
                //        NSLog(@"s1 > s2");
                NSLog(@"s1 > s3");
            }
            
            // get substring
            NSString *s4_1 = [s1 substringFromIndex:3]; // 4567, [index,end]
            NSLog(@"s4_1 is %@",s4_1);
            
            NSString *s4_2 = [s1 substringToIndex:3];
            NSLog(@"s4_2 is %@",s4_2);                  // 123, [0,index)
            
            NSString *s4_3 = [s1 substringWithRange:NSMakeRange(2,3)];  // 345, [index, index + len -1 ]
            NSLog(@"s4_3 is %@",s4_3);
            
            // 是否包含string
            NSRange range= [s1 rangeOfString:s3];
            NSLog(@"location is %lu, length is %lu",range.location, range.length);  // 0, 3
            
            NSRange range2= [s1 rangeOfString:s3_2];
            NSLog(@"location is %lu, length is %lu",range2.location, range2.length);  // 1, 2
            if(range2.length > 0 ){
                NSLog(@"s1 has s3_2");  // has
            }
        }
    }
    return 0;
}
*/
