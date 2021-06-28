//
//  Person.h
//  test-Object-C
//
//  Created by hades on 2020/12/11.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 1 类的定义
@interface Person : NSObject
{
// 3 成员变量
// 7 访问权限
@public int age;
@private float height;
@protected NSString *name;
}

// 4 构造函数
// id = Person*
- (id)init; // 构造方法：以init开头
- (id)initAge:(int)newAge;
- (id)initAge:(int)newAge andHeight:(float)newHeight;

// 5 方法（对象方法/消息）
- (void)setAge:(int)newAge;
- (void)setHeight:(float)newHeight;
- (void)setAge:(int)newAge andHeight:(int)newHeight;

- (int)getAge;
- (float)getHeight;
- (NSString*)getName;

// 类方法
@end

NS_ASSUME_NONNULL_END
