//
//  main.m
//  test-Object-C
//
//  Created by hades on 2020/11/27.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

// 9 继承
@interface Student : Person
{
    int score;
}
// 新增方法
- (void)study;
//- (int)getScore;  // Java 习惯
- (int)score;       // Object-C 习惯
- (void)setScore:(int)newScore;

+ (Student *) student;
@end

// 2 类的实现
@implementation Student : Person
- (void)study{
    NSLog(@"stu Study");
    // 12 self
    NSLog(@"self in 方法 is :%@",self); // <Student: 0x100505ff0>
}
// Java 习惯
//- (int)getScore{
//    return score;
//}

// Object-C 习惯
- (int)score{
    return score;
}

- (void)setScore:(int)newScore{
    score = newScore;
}

// 10 重写
- (NSString*)getName{
    // 11 super
    NSString *v =  [super getName];
    NSString *v2= [v stringByAppendingString:@" is belong to a Sudent"];
    return v2;
}

// 6 类方法
// 创建一个Student对象，类似于java static newInstance();
+ (Student *) student{
    // 等价于 [[Student alloc]init]
    id object = [[self alloc]init];
    // 12 self
    NSLog(@"self in 类方法 is :%@",self); // Student
    return object;
}
@end

//int main(int argc, const char * argv[]) {
//    // @autoreleasepool：内存管理，内存释放池
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//        
//        Person *p = [[Person alloc]init];
//        // p->age 直接调用
//        NSLog(@"Person age is-%d, height is-%f, name is-%@",p->age,[p getHeight],[p getName]);
//        [p setAge:100];
//        [p setHeight:1.8];
//        NSLog(@"Person age is-%d, height is-%f, name is-%@",p->age,[p getHeight],[p getName]);
//        
//        Student *stu= [[Student alloc]init];
//        // 9 继承
//        NSLog(@"stu %d",stu->age);
//        // 新增方法
//        [stu study];
//        [stu setScore:98];
////        NSLog(@"stu score %d",[stu getScore]);    // Java 习惯
//        NSLog(@"stu score %d",[stu score]);         // Object-C 习惯
//        // 10 重写
//        NSLog(@"stu name %@",[stu getName]);
//        
//        // 12 self
//        [stu study];
//        [Student student];
//    }
//    return 0;
//}
