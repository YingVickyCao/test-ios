//
//  _17_main_4_NSFileManager_op_dir.m
//  test-Object-C
//
//  Created by hades on 2021/8/18.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
// Example：使用目录
int main(int argc, const char* argv[]){
    @autoreleasepool {
 
 
 
 
 
 
 
//        testfile.txt
        NSString *dirName = @"/Users/hades/Desktop/testDir/";
        NSString *newDirName = @"/Users/hades/Desktop/newDir/";
        NSString *path;
        
        NSFileManager *fm = [NSFileManager defaultManager];
        
        // 获取当前目录
        path = [fm currentDirectoryPath];
        // When run in terminal, 当前目录 /Users/hades/Library/Developer/Xcode/DerivedData/test-Object-C-buxjaoiwvbppvyeelduajdrfbbfc/Build/Products/Debug
        // When run in IOS,因为程序运行在沙盒中，当前目录是 /
        NSLog(@"current dir is %@",path);
        
        // 创建一个新目录 testDir
        if ([fm createDirectoryAtPath:dirName withIntermediateDirectories:YES attributes:nil error:NULL] == NO) {
            NSLog(@"Cannot create dir");
            return 1;
        }
        
        // 重命名目录 testDir ->  newDir
        if([fm moveItemAtPath:dirName toPath:newDirName error:NULL] == NO){
            NSLog(@"Dir rename failed");
            return 2;
        }
        
        // 更改当前的工作目录 到 新的目录
        if ([fm changeCurrentDirectoryPath:newDirName] == NO) {
            NSLog(@"Change dir failed.");
            return 3;
        }
        
        // 获取并显示当前的工作目录
        path = [fm currentDirectoryPath];
        // /Users/hades/Desktop/newDir
        NSLog(@"current dir is %@",path);
        
        NSLog(@"All operators is successfull");
    }
    return 0;
}
*/
