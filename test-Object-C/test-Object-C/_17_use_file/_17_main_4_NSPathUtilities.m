//
//  _17_main_4_NSFileManager_4_use_path.m
//  test-Object-C
//
//  Created by hades on 2021/8/18.
//  Copyright © 2021 hades. All rights reserved.
//


#import <Foundation/Foundation.h>

/*
// Example ： 操作路径
int main(int argc, const char* argv[]){
    
    @autoreleasepool {
        
        NSFileManager *fm = [NSFileManager defaultManager];
        
        // 获取临时目录, NSTemporaryDirectory:临时目录用来创建临时文件的目录路径名。在这个创建临时文件，使用后要在完成任务后删除它们。
        NSString *tempDir = NSTemporaryDirectory();
        // /var/folders/4m/22mb6kps5kd5h7_c3d1sv7f40000gn/T/
        NSLog(@"temp dir is %@",tempDir);
        
        // 从当前目录中提取基本路目录
        NSString *path = [fm currentDirectoryPath];
        // /Users/hades/Library/Developer/Xcode/DerivedData/test-Object-C-buxjaoiwvbppvyeelduajdrfbbfc/Build/Products/Debug
        NSLog(@"current dir is %@",path);
        // Debug
        // lastPathComponent : 从路径中获取最后一个文件名。当有一个绝对路径名，可以从中提取基本的文件名。
        NSLog(@"base dir is %@",[path lastPathComponent]);
        
        // 创建在当前目录中的完整路径名
        NSString *fullpath = [path stringByAppendingPathComponent:@"path.m"];
        // /Users/hades/Library/Developer/Xcode/DerivedData/test-Object-C-buxjaoiwvbppvyeelduajdrfbbfc/Build/Products/Debug/path.m
        NSLog(@"full dir is %@",fullpath);
        
        // 获取文件的扩展名
        NSString *extensiton = [fullpath pathExtension];
        NSLog(@"extensiton for %@ is %@",fullpath, extensiton); // m
        
        // 获取用户的主目录
        NSString *homedir = NSHomeDirectory();
        // /Users/hades
        NSLog(@"home dir is %@",homedir);
        
        // 拆路径为各个组成部分
        NSArray *components = [homedir pathComponents];
        // (
//        "/",
//        Users,
//        hades
//        )
        NSLog(@"%@",components);
        
        
        // NSSearchPathForDirectoriesInDomains 返回一组路径的数组。
        // 第二个参数如果多个值，该数组将包含多个元素。
        // 当为IOS编程时，第二个参数应该是NSUserDomainMask，并希望得到一个包含单个路径的数组作为返回
        NSArray *dirList =  NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        //  (
        // "/Users/hades/Documents"
        // )
        NSLog(@"%@",dirList);
        NSString *docDir = dirList[0];
        NSString *filePath = [docDir stringByAppendingPathComponent:@"abc.txt"];// 拼接该文件的绝对路径，跟这个文件是否存在无关。
        // /Users/hades/Documents/tmp.txt
        NSLog(@"%@",filePath);
    }
    return 0;
}
*/
