//
//  _17_main_4_NSFileHandler_3.m
//  test-Object-C
//
//  Created by hades on 2021/8/25.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
// Example：文件的一些基本操作
// 假设存在一个“testfile.txt” 文件在当前工作目录中。打开testfile.txt，读取它的内容，并将其追加到"out.txt"的文件末尾。=>多次按buffer写入
int main(int argc, const char* argv[]){
    @autoreleasepool {
        NSFileHandle *fileHandler_in, *fileHandler_out;
        NSData *buffer;
        NSString *fileName_in = @"testfile.txt";
        NSString *fileName_out = @"out.txt";
        NSDictionary *dic;
        
        // 打开 testfile.txt 并读取
        fileHandler_in = [NSFileHandle fileHandleForReadingAtPath:fileName_in];
        if (fileHandler_in == nil) {
            NSLog(@"Open testfile.txt for reading fialed");
            return 1;
        }
        
        // 创建输出文件：即使有会重新创建一个新的空文件，覆盖掉old out file。
        [[NSFileManager defaultManager] createFileAtPath:fileName_out contents:nil attributes:nil];
        
        // 打开输出文件 文件进行读写
        fileHandler_out = [NSFileHandle fileHandleForWritingAtPath:fileName_out];
        if (fileHandler_out == nil) {
            NSLog(@"open out for writing failed");
            return 2;
        }
        
        {
            NSError *error =  nil;
            NSDictionary *dic = [[NSFileManager defaultManager]attributesOfItemAtPath:fileName_in error:&error];
            if (error) {
                NSLog(@"read in file size failed");
                return 3;
            }
            NSNumber *fileSize = [dic objectForKey:NSFileSize];
            long longFileSize = [fileSize longValue];
            NSLog(@"in file size is %li",longFileSize);
        }
        
        const NSInteger BUFFER_SIZE = 1024;
        while (true) {
            buffer = [fileHandler_in readDataOfLength:BUFFER_SIZE];
            if (buffer == nil || [buffer length] == 0) {
                break;
            }
            else{
                [fileHandler_out writeData:buffer];
            }
        }
        
        {
            NSError *error =  nil;
            NSDictionary *dic = [[NSFileManager defaultManager]attributesOfItemAtPath:fileName_out error:&error];
            if (error) {
                NSLog(@"read out file size failed");
                return 4;
            }
            NSNumber *fileSize = [dic objectForKey:NSFileSize];
            long longFileSize = [fileSize longValue];
            NSLog(@"out file size is %li",longFileSize);
        }
        
        // 关闭这两个文件
        [fileHandler_in closeFile];
        [fileHandler_out closeFile];
        
        NSLog(@"All operation is successful");
    }
    return 0;
}

// TODO:
//+(long) getFileSize:(NSString *) fileName :(NSError *) error{
//    NSDictionary *dic = [[NSFileManager defaultManager]attributesOfItemAtPath:fileName error:&error];
//    if (error) {
//        NSLog(@"read in file size failed");
//        return 3;
//    }
//    NSNumber *fileSize = [dic objectForKey:NSFileSize];
//    long longFileSize = [fileSize longValue];
//    NSLog(@"in file size is %li",longFileSize);
//    return longFileSize;
//}
*/
