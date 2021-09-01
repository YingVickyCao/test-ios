//
//  _17_main_4_NSFileHandler_2.m
//  test-Object-C
//
//  Created by hades on 2021/8/25.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
// Example：文件的一些基本操作
// 假设存在一个“testfile.txt” 文件在当前工作目录中。打开testfile.txt，读取它的内容，并将其追加到"out.txt"的文件末尾。=>一次性写入
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
        
        // 打开输出文件 文件进行读写
        fileHandler_out = [NSFileHandle fileHandleForWritingAtPath:fileName_out];
        if (fileHandler_out == nil) {
            NSLog(@"open out for writing failed");
            return 2;
        }
        
        // 定位到out file 文件的末尾，从此处开始追加
        // 可以使用seekToEndOfFile的返回值信息获取程序中文件的大小。
        // [fileHandler_out seekToEndOfFile];
        
        // 定位到 out file 的10 字节，从此处开始追加
//        [fileHandler_out seekToFileOffset:10];
        
        // 跳过out file 文件中当前位置之后的128字节
//        [fileHandler_out seekToFileOffset:[fileHandler_out offsetInFile]+128];
        
        // 在文件中向回移动5个整数所占的字节数
//        [fileHandler_out seekToFileOffset:[fileHandler_out offsetInFile] - 5 * sizeof(int)];
        
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
}
*/
