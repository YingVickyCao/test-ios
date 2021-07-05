//
//  _2_5_main_4_ check_dynamic_type.m
//  test-Object-C
//
//  Created by hades on 2021/7/6.
//  Copyright © 2021 hades. All rights reserved.
//

#import "Square.h"
/*
int main(int argc, const char* argv[]){
    @autoreleasepool {
        // 检查动态类型
        
        // isMemberOfClass :检测类中的成员关系
        Square *mySquare = [[Square alloc]init];
        if ([mySquare isMemberOfClass:[Square class]] == YES) {
            NSLog(@"mySquare is a member of Square class]"); // invoked
        }
        
        if ([mySquare isMemberOfClass:[Rectangle class]] == YES) {
            NSLog(@"mySquare is a member of Rectangle class");
        }
        
        if ([mySquare isMemberOfClass:[NSObject class]] == YES) {
            NSLog(@"mySquare is a member of NSObject class");
        }
        
        
        // isKindOfClass ： 检测继承层次中的关系
        if([mySquare isKindOfClass:[Square class]] == YES){
            NSLog(@"mySquare is a kind of Square class");   // invoked
        }
        
        if([mySquare isKindOfClass:[Rectangle class]] == YES){
            NSLog(@"mySquare is a kind of Rectangle class");    // invoked
        }
        
        if([mySquare isKindOfClass:[NSObject class]] == YES){
            NSLog(@"mySquare is a kind of NSObject class"); // invoked
        }
        
        // respondsToSelector ： 检测实例是否可以响应实例方法，或类相应方法
        if ([mySquare respondsToSelector:@selector(setSide:)] == YES) {
            NSLog(@"mySquare responses to  setSide : method");  // invoked
        }
        
        if ([mySquare respondsToSelector:@selector(setWidth:andHeight:)] == YES) {
            NSLog(@"mySquare responses to  setWidth:andHeight: method");    // invoked
        }
        
        if ([Square respondsToSelector:@selector(alloc)] == YES) {
            NSLog(@"Square responses to alloc method"); // invoked
        }
        
        // instancesRespondToSelector
        if ([Rectangle instancesRespondToSelector:@selector(setSide:)]  == YES) {
            NSLog(@"Instances of Rectangle response to setSide: method");
        }
        
        if ([Square instancesRespondToSelector:@selector(setSide:)]  == YES) {
            NSLog(@"Instances of Square response to setSide: method");   // invoked
        }
        
        // isSubclassOfClass
        if ([Square isSubclassOfClass:[Rectangle class]] == YES) {
            NSLog(@"Square is a subclass of Rectangle");    // invoked
        }
        
    }
    return 0;
}
*/


