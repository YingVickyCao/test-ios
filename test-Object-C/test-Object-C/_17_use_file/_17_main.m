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
        NSString *fName = @"testfile.txt";
        NSString *newFileName = @"newfile.txt";
        NSString *newFileName2 = @"newfile2.txt";
        NSFileManager *fm =  [NSFileManager defaultManager];
        NSDictionary *attr;
        
        if ([fm fileExistsAtPath:fName] == NO) {
            return 1;
        }
        
        if ([fm copyItemAtPath:fName toPath:newFileName error:NULL] == NO) {
            NSLog(@"file copy failed.");
            return 2;
        }
        
        if ([fm contentsEqualAtPath:fName andPath:newFileName] == NO) {
            NSLog(@"Files are not equal");
            return 3;
        }
        
        if ([fm moveItemAtPath:newFileName toPath:newFileName2 error:NULL] == NO) {
            NSLog(@"Files rename failed");
            return 4;
        }
        
        attr =[fm attributesOfItemAtPath:newFileName2 error:NULL];
        if (attr == nil) {
            NSLog(@"Can't get files attribute!");
            return 5;
        }
        
        NSLog(@"File size is %llu bytes", [[attr objectForKey:NSFileSize] unsignedLongLongValue]);
        
        if ([fm removeItemAtPath:fName error:NULL] == NO) {
            NSLog(@"File removal failed.");
            return 6;
        }
        
        NSLog(@"All file operations were successfu");
    }
    return 0;
}
*/
