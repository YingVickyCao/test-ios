//
//  _4_main_for_byte_operator.m
//  test-Object-C
//
//  Created by hades on 2021/7/7.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char* argv[]){
    @autoreleasepool {
        // 按位与
        {
            short int w1 = 0x15;
            short int w2 = 0x0c;
            short int w3 = w1 &  w2;
            //            NSLog(@"%i,%i,%i",w1,w2,w3);    // 21,12,4
            //            NSLog(@"%x,%x,%x",w1,w2,w3);    // 15,c,4
        }
        
        // 按位或
        {
            short int w1 = 0x19,w2 = 0x6a ;
            short int w3 = w1 |  w2;
            //            NSLog(@"%x",w3);    // 7b
        }
        
        
         // 按位异或
        {
            short int w1 = 0x5e,w2 = 0xd6 ;
            short int w3 = w1 ^ w2;
            NSLog(@"%x",w3);    // 88
        }
        
        // 一次求反运算符
        {
            short int w1 = 0xa52f;
            short int w2 = ~w1;
            NSLog(@"%x",w2);    // 5ad0
        }
        
        // 向左移位
        {
            short int w1 = 0x03;
            short int w2 = w1 << 1;
            NSLog(@"%x",w2);    // 6
        }
        
        // 向右移位
        {
            short int w1 = 0x06;
            short int w2 = w1 >> 1;
            NSLog(@"%x",w2);    // 3
        }
        
    }
    return 0;
}
