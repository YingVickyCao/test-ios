//
//  Person2.m
//  test-Object-C
//
//  Created by hades on 2020/12/11.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

// 13 点语法
@interface Person2 : NSObject{
    
}
// Progerty 能自动生成set 和 get 方法
@property (nonatomic, strong)NSString *name;
@property (nonatomic, assign)int age;
@property (nonatomic, assign)float height;

- (void)getProperty;
@end

@implementation Person2
// IOS 5.02之后，不用写,自动生成
@synthesize name = _name,age = _age,height = _height;

- (NSString*)getName{
    NSLog(@"getName called");
    return _name;
}

- (void)setName:(NSString *)newName{
    NSLog(@"setName called");
    _name = newName;
}

// 验证@synthesize是否起作用。
- (void)getProperty{
    // 若起作用，能访问到_name.
//    _name = @"abc";
//    _age = 21;
//    _height = 178;
    
    // 用点语法访问
    NSLog(@"getProperty [1] %@",self.name);
    
    self.name = @"abc";
//    self.age = 21;
//    self.height = 178;
    
    NSLog(@"getProperty [2] %@",self.name);
}
@end


//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSLog(@"Hello, World!");
//        Person2 *p2 = [[Person2 alloc]init];
//        [p2 getProperty];
//        ;
//        NSLog(@"main, getName %@",[p2 getName]);
//    }
//    return 0;
//}
