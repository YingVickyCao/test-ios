//
//  main.m
//  test-Object-C
//
//  Created by hades on 2020/12/18.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
int main(int argc, const char * argv[]){
    // 创建
    NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2", nil];
    // k1 = v1;
    // k2 = v2;
    NSLog(@"%@",dict);
    
    // 快速创建
    NSDictionary *dict2 = @{@"k1":@"v1",@"k2":@"v2"};
    // k1 = v1;
    // k2 = v2;
    NSLog(@"%@",dict2);
    
    // 由key ，得到 value
    NSString *key = @"k1";
    NSString *value = [dict objectForKey:key];
    NSLog(@"%@",value); // v1
    NSLog(@"%@",[dict valueForKey:key]);  // v1
    
    // 得到所有key
    NSLog(@"%@",[dict allKeys]); // k2, k1
    
    // 得到所有value
    NSLog(@"%@",[dict allValues]); // v2, v1
    
    // 遍历，key
    NSEnumerator *enumerator = [dict keyEnumerator];
    id key1;
    while (key1 = [enumerator nextObject]) {
        // k2 - v2
        // k1 - v1
        NSLog(@"%@ - %@",key1,[dict valueForKey:key1]);
    }
    
    // 遍历，key
    for (key1 in dict) {
        // k2 - v2
        // k1 - v1
        NSLog(@"%@ - %@",key1,[dict valueForKey:key1]);
    }
    
    // 遍历，value
    NSEnumerator *enumerator2 = [dict objectEnumerator];
    id value1;
    while (value1 = [enumerator2 nextObject]) {
        // v2
        // v1
        NSLog(@"%@",value1);
    }
    
//    [dict setValue:@"v2_new" forKey:@"k2"]; //  ERROR: this class is not key value coding-compliant for the key k2
}
*/
