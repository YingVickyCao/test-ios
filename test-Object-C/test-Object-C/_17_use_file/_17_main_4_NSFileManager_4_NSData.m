//
//  _17_main_4_NSFileManager_NSData.m
//  test-Object-C
//
//  Created by hades on 2021/8/18.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 
// Example：使用NSData 实现文件复制。
int main(int argc, const char* argv[]){
    @autoreleasepool {

        NSString *fName = @"/Users/hades/Desktop/testfile.txt";
        NSString *newFileName = @"/Users/hades/Desktop/newfile.txt";
//
        NSFileManager *fm = [NSFileManager defaultManager];

        if ([fm fileExistsAtPath:fName] == NO) {
            NSLog(@"File not existed.");
            return 1;
        };

        // 将文件的内容读入到内存缓冲区
        NSData *fileData = [fm contentsAtPath:fName];
        if (fileData == nil) {
            NSLog(@"File read failed.");
            return 2;
        }
        
        // 将数据从内存缓冲区写入 newfile.txt
        if ([fm createFileAtPath:newFileName contents:fileData attributes:nil] == NO) {
            // attributes:nil 表示采用默认的属性值。
            NSLog(@"Can not create the copy");
            return 3;
        }
        NSLog(@"File copy is successful.");

    }
    return 0;
}
*/
