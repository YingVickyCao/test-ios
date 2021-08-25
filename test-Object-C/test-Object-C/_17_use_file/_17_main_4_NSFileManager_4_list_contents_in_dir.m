//
//  _17_main_4_NSFileManager_4_list_contents_in_dir.m
//  test-Object-C
//
//  Created by hades on 2021/8/18.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
// Example : 枚举目录
int main(int argc, const char* argv[]){
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        //        NSString *dirPathToList =  [fm currentDirectoryPath];
        NSString *dirPathToList = @"/Users/hades/Desktop";
        NSString *path = @"/Users/hades/Desktop";
        
        // 枚举目录-递归显示
        {
            NSDirectoryEnumerator *dirEnumerator = [fm enumeratorAtPath:dirPathToList];
            NSLog(@"Contents of %@",dirPathToList);

            while ((path = [dirEnumerator nextObject]) != nil) {
                
                // 若是目录，仅仅打印它本身，阻止递归枚举它的内容
                BOOL flag;
                NSString * fullPath = [dirPathToList stringByAppendingPathComponent:path];
                [fm fileExistsAtPath:fullPath isDirectory:&flag];
                if (flag == YES) {
                    [dirEnumerator  skipDescendants];
                }
                
                NSLog(@"%@",path);
            }
        }
        
        NSLog(@"\n");
        
        // 枚举目录-不递归显示
        {
            NSArray *dirArray = [fm contentsOfDirectoryAtPath:dirPathToList error:NULL];
            // 显示整个内容
            NSLog(@"%@",dirArray);
            
            // 快速枚举
            NSLog(@"\n");
            NSLog(@"快速枚举:");
            for (path in dirArray) {
                NSLog(@"%@",path);
            }
        }
        
    }
    return 0;
}
*/
