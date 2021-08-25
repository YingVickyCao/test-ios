//
//  _17_main_4_NSFileHandler.m
//  test-Object-C
//
//  Created by hades on 2021/8/24.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
// Example：文件的一些基本操作
// 假设存在一个“testfile.txt” 文件在当前工作目录中。打开testfile.txt，读取它的内容，并将其复制到名为"out.txt"的文件中。
int main(int argc, const char* argv[]){
    @autoreleasepool {
        NSFileHandle *fileHandler_in, *fileHandler_out;
        NSData *buffer;
        NSString *fileName_in = @"testfile.txt";
        NSString *fileName_out = @"out.txt";

        // 打开 testfile.txt 并读取
        fileHandler_in = [NSFileHandle fileHandleForReadingAtPath:fileName_in];
        if (fileHandler_in == nil) {
            NSLog(@"Open testfile.txt for reading fialed");
            return 1;
        }
        
        // 创建输出文件
        [[NSFileManager defaultManager] createFileAtPath:fileName_out contents:nil attributes:nil];
        
        // 打开输出文件 文件进行读写
        fileHandler_out = [NSFileHandle fileHandleForWritingAtPath:fileName_out];
        if (fileHandler_out == nil) {
            NSLog(@"open out for writing failed");
            return 2;
        }
        
        // 类似C语言一样，直接将文件清空，然后将内容写入到文件里面
        // 因为它可能已经包含数据，截断输出文件。
        // TODO：truncateFileAtOffset
//        [fileHandler_out truncateFileAtOffset:0];
        [fileHandler_out seekToEndOfFile];
        
        // 从 in file 中读取数据，将它写到out file
        // readDataToEndOfFile: 每次从文件中读取最多UNIT_MAX字节的数据，它定义在 limits.h中，在很多系统中该值等于FFFFFFFF（16）。
    
        buffer = [fileHandler_in readDataToEndOfFile];
        [fileHandler_out writeData:buffer];
    
        // 关闭这两个文件
        [fileHandler_in closeFile];
        [fileHandler_out closeFile];
        
        NSLog(@"%@",[NSString stringWithContentsOfFile:fileName_out encoding:NSUTF8StringEncoding error:NULL]);
        NSLog(@"All operation is successful");
    }
    return 0;
}*/
