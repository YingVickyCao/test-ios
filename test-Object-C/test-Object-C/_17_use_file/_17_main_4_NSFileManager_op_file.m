//
//  _17_main.m
//  test-Object-C
//
//  Created by hades on 2021/8/5.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
int main(int argc, const char * argv[]){
    
    @autoreleasepool {
        NSFileManager *fm =  [NSFileManager defaultManager];
        
        // NSString *homeDir = NSHomeDirectory();
        // NSLog(homeDir); // /Users/hades
        // NSLog([fm currentDirectoryPath]); // /Users/hades/Library/Developer/Xcode/DerivedData/test-Object-C-buxjaoiwvbppvyeelduajdrfbbfc/Build/Products/Debug
        
        NSString *fName = @"/Users/hades/Desktop/testfile.txt";
        NSString *newFileName = @"/Users/hades/Desktop/newfile.txt";
        NSString *newFileName2 = @"/Users/hades/Desktop/newfile2.txt";
        
        // 测试文件是否存在
        if ([fm fileExistsAtPath:fName] == NO) {
            return 1;
        }
        
        // 创建一个副本
        if ([fm copyItemAtPath:fName toPath:newFileName error:NULL] == NO) {
            NSLog(@"file copy failed.");
            return 2;
        }

        // 测试文件是否一致
        if ([fm contentsEqualAtPath:fName andPath:newFileName] == NO) {
            NSLog(@"Files are not equal");
            return 3;
        }

        // 重命名
        if ([fm moveItemAtPath:newFileName toPath:newFileName2 error:NULL] == NO) {
            NSLog(@"Files rename failed");
            return 4;
        }

        // 获取文件大小
        NSDictionary *attributes =[fm attributesOfItemAtPath:newFileName2 error:NULL];
        if (attributes == nil) {
            NSLog(@"Can't get files attribute!");
            return 5;
        }

        NSLog(@"File size is %llu bytes", [[attributes objectForKey:NSFileSize] unsignedLongLongValue]);

        // 删除文件
        if ([fm fileExistsAtPath:newFileName2]) {
            if ([fm removeItemAtPath:newFileName2 error:NULL] == NO) {
                NSLog(@"File removal failed.");
                return 6;
            }
        }
        
        // 显示文件内容
        NSLog(@"%@",[NSString stringWithContentsOfFile:fName encoding:NSUTF8StringEncoding error:NULL]);
    
        NSLog(@"All file operations were successfu");
    }
    return 0;
}
*/
