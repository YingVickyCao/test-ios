//
//  main.m
//  test-Object-C
//
//  Created by hades on 2020/12/24.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog2.h"
#import "Person4.h"

int main(int argc, const char * argv[]){
    // XCode >= 5.0
//    @autoreleasepool {
//        // code
//    }
    
    // XCode < 5.0
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
    // code
    Dog2 *dog = [[[Dog2 alloc]init] autorelease];
    dog.ID = 1;
    NSLog(@"[1] = %ld",[dog retainCount]);
    
    Person4 *p = [[[Person4 alloc]init] autorelease];
    [p setDog:dog];
    NSLog(@"[2] = %ld",[dog retainCount]);
    
    [dog release];
    NSLog(@"[3] = %ld",[dog retainCount]);
//
//    [p release];
//    p = nil;
    
    [pool release];
    pool = nil;
    NSLog(@"pool end release");
    NSLog(@"[4] = %ld",[dog retainCount]);
    
//    NSAutoreleasePool 可以有多个
//    NSAutoreleasePool *poo2 = [[NSAutoreleasePool alloc]init];
//    // code
//    [poo2 release];
    return 0;
}
