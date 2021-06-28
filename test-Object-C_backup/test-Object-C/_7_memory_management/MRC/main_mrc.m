//
//  main_mrc.m
//  test-Object-C
//
//  Created by hades on 2020/12/23.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person3.h"
/*
int main(int argc, const char * argv[]){
    @autoreleasepool {
        {
            //            NSString *str = [[NSString alloc] initWithString:@"Hi"];
            //            NSMutableArray *array = [[NSMutableArray alloc]init];
            //            [array addObject:str];
            //            // MRC
            //            [str release];
        }
        {
            //            Cat *cat = [[Cat alloc]init];
            //            NSLog(@"%zd",cat.retainCount);  // 1
            //
            //            Cat *cat2 = cat;
            //            NSLog(@"%zd",cat.retainCount);  // 1
        }
        
        {
            //            Dog *cat = [[Dog alloc]init];
            //            NSLog(@"%zd",cat.retainCount);  // 1
            //
            //            Dog *cat2 = [cat retain];
            //            NSLog(@"%zd",cat.retainCount);  // 2
            //            NSLog(@"%zd",cat2.retainCount); // 2
            //
            //            Dog *cat3 = [cat retain];
            //            NSLog(@"%zd",cat.retainCount);  // 3
            //
            //            [cat2 release];
            //            cat2  = nil;
            //            NSLog(@"%zd",cat.retainCount);  // 2
            //
            //            [cat3 release];
            //            cat3  = nil;
            //            NSLog(@"%zd",cat.retainCount);  // 1
            //
            //            [cat release];
            //            cat  = nil;
            //            NSLog(@"%zd",cat.retainCount);  // 0
            
            // 分析 当引用计数器 为 0 时，系统要回收内存
            // 析构方法
        }
        {
            Dog * dog = [[Dog alloc]init];
            dog.ID = 1;
            NSLog(@"main(),[1]-%zd",dog.retainCount);  // 1
            
            Dog *dog2 = [dog retain];
            dog2.ID = 2;
            NSLog(@"main(),[2]-%zd",dog.retainCount);  // 2
            NSLog(@"main(),id:%d",dog.ID);         // 2
            NSLog(@"main(),id:%d",dog2.ID);        // 2
            
            Person3 *p = [[Person3 alloc]init];
            [p setDog:dog];
            NSLog(@"main(),[3]-%zd",dog.retainCount);  // 3

            [p setDog:dog2];
            NSLog(@"main(),[4]-%zd",dog.retainCount);  // 3
            
            [p release];
            p = nil;
            NSLog(@"main(),p = nil");  // 3
            
            [dog2 release];
            dog2 = nil;
            
            [dog release];
            dog = nil;
        }
    }
    return 0;
}
*/
