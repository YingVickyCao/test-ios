//
//  test_NSMutableString.m
//  test-Object-C
//
//  Created by hades on 2020/12/16.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc,const char * argv[]){
    @autoreleasepool {
        // Create - 对象方法
        {
            NSString *s = @"S1";
            // 对象方法
            NSMutableString *s1 = [[NSMutableString alloc]initWithString:s];
            NSLog(@"%@",s1);    // s1

            NSMutableString *s2 = [ [NSMutableString alloc]    initWithUTF8String:"S2"];
            NSLog(@"%@",s2);    // s2

            NSMutableString *s3 = [[NSMutableString alloc] initWithFormat:@"abc %@ - %d", @"H", 10];
            NSLog(@"%@",s3); // abc H - 10
        }
        
        // Create - 类方法
        {
            NSString *s = @"S1";
            // 对象方法
            NSMutableString *s1 = [NSMutableString stringWithString:s];
            NSLog(@"%@",s1);    // s1

            NSMutableString *s2 = [ NSMutableString stringWithUTF8String:"S2"];
            NSLog(@"%@",s2);    // s2

            NSMutableString *s3 = [NSMutableString stringWithFormat:@"abc %@ - %d", @"H", 10];
            NSLog(@"%@",s3); // abc H - 10
        }
        
        // 增 删 改 查
        // 增
        {
            {
                NSMutableString *s = [NSMutableString stringWithString:@"123456"];
                [s appendString:@"d"];
                NSLog(@"%@",s); // 123456d
            }
            
            {
                NSMutableString *s = [NSMutableString stringWithString:@"123456"];
                [s appendFormat:@"%@-%d",@"abc",10];
                NSLog(@"%@",s); // 123456abc-10
            }
            
            {
                NSMutableString *s = [NSMutableString stringWithString:@"123456"];
                [s insertString:@"ZY" atIndex:3];
                NSLog(@"%@",s); // 123ZY456
            }
        }
        
        // 删
        {
            {
                NSMutableString *s = [NSMutableString stringWithString:@"123456"];
                [s deleteCharactersInRange:NSMakeRange(3,2)];
                NSLog(@"%@",s); // 1236
            }
        }
        
        // 改
        {
            {
                NSMutableString *s = [NSMutableString stringWithString:@"123456"];
                [s setString:@"China"];
                NSLog(@"%@",s); // China
            }
        }
        
        // 查
        {
            NSMutableString *s1 = [NSMutableString stringWithString:@"1234567"];
            NSMutableString *s2 = [NSMutableString stringWithString:@"1234567"];
            NSMutableString *s3 = [NSMutableString stringWithString:@"123"];
            NSMutableString *s3_2 =[NSMutableString stringWithString:@"23"];
            
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
