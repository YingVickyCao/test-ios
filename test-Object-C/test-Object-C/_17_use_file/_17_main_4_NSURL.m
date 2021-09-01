//
//  _17_main_4_NSURL.m
//  test-Object-C
//
//  Created by hades on 2021/8/31.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
// Example : NSURL 类。从网站读取HTML内容
int main(int argc, const char* argv[]){
    @autoreleasepool {
        NSURL *myUrl = [NSURL URLWithString:@"https://developer.android.google.cn/"];
        
//        NSString *myHomePage = [NSString stringWithContentsOfURL:myUrl encoding:NSASCIIStringEncoding error:NULL];
//        NSLog(@"%@",myHomePage);
        
//        NSDictionary *dict = [NSDictionary dictionaryWithContentsOfURL:myUrl];
//
//
//        NSLog(@"end");
//
//        [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//            NSLog(@"%@,%@",key,obj);
//        }];
        // TODO: https://blog.csdn.net/worldzhy/article/details/49982491
        
        NSError *error;
        NSData *data = [NSData dataWithContentsOfURL:myUrl options:0 error:&error];
        NSLog(@"%@",[data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength]);


        
    }
    return 0;
}
*/
