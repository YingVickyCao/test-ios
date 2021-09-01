//
//  _17_main_4_NSBundle.m
//  test-Object-C
//
//  Created by hades on 2021/9/1.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char* argv[]){
    @autoreleasepool {
        NSString *textFilePath = [[NSBundle mainBundle]pathForResource:@"newfile" ofType:@"txt" inDirectory:@"_17_use_file"];
        NSLog(@"%@",textFilePath);
        return 0;
    }
}
