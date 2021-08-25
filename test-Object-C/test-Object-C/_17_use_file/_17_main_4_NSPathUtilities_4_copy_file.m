//
//  _17_main_4_NSPathUtilities_4_copy_file.m
//  test-Object-C
//
//  Created by hades on 2021/8/24.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

// TODO: 16.2.2
// 如何使用命令行
/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *source, *dest;
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        
        if ([args count] != 3) {
            NSLog(@"Usage: %@ src dest",[proc processName]);
            return 1;
        }
        source = args[1];
        dest = args[2];
        
        if ([fm isReadableFileAtPath:source] == NO) {
            NSLog(@"Can'r read %@",source);
            return 2;
        }
        
        [fm fileExistsAtPath:dest isDirectory:&isDir];
        
        if (isDir == YES) {
            dest = [dest stringByAppendingPathComponent:[source lastPathComponent]];
        }
        
        [fm removeItemAtPath:dest error:NULL];
        
        
        if ([fm copyItemAtPath:source toPath:dest error:NULL] == NO) {
          NSLog(@"Copy failed");
        }
        
        NSLog(@"Copy of %@ to %@ successed",source,dest);
        
    }
    return 0;
}
*/
