//
//  AddressBook.m
//  test-Object-C
//
//  Created by hades on 2021/7/23.
//  Copyright © 2021 hades. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName,book;

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    return self;
}


- (instancetype)init
{
    return [self initWithName:@"NoName"];
}

- (void)addCard:(AddressCard_2 *)theCard{
    [book addObject:theCard];
}

- (void)removeCard:(AddressCard_2 *)theCard{
    // removeObjectIdenticalTo:按内存地址。内存地址相同，则视为同一个对象，会删除
    [book removeObjectIdenticalTo:theCard];
}

- (void)removeCard2:(AddressCard_2 *)theCard{
    // removeObject ： 通过isEqual比较内容。只有内容完全相同，才删除。
    [book removeObject:theCard];
}

- (unsigned long)count{
    return [book count];
}

// 遍历数组：快速遍历
- (void)list{
    for (AddressCard_2 *theCard in book) {
        NSLog(@"%-20s     %-20s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
}

// 遍历数组：enumerateObjectsUsingBlock
- (void)list2{
    [book enumerateObjectsUsingBlock:^(AddressCard_2 *theCard,NSUInteger idx,BOOL *stop){
        NSLog(@"%-20s     %-20s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }];
}

- (AddressCard_2 *)lookup:(NSString *)theName{
    for (AddressCard_2 *nextCard in book) {
        if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame) {
            return nextCard;
        }
    }
    return nil;
}

// indexOfObjectPassingTest：以区块作为参数。
// 区块应用在集合的每个元素。传递数组的元素、索引号和一个指向BOOL变量的指针给区块。使用区块中的代码测试元素是否满足条件，则返回YES，不满足则返回NO。
// 即使方法返回YES，仍然会继续执行，知道所有的元素被处理过。可以设置BOOL 指针引用的值为YES终止处理。
- (AddressCard_2 *)lookup2:(NSString *)theName{
    NSUInteger result = [book indexOfObjectPassingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([[obj name] caseInsensitiveCompare:theName] == NSOrderedSame) {
            // 找到一个匹配，一个足够了
            *stop = YES;
            return YES;
        }
        else{
            return NO;  // 继续查找
        }
    }];
    
    // 如果找到一个匹配项目，则查看它
    if (result != NSNotFound) {
        return book[result];    // 只有一个元素
    }
    else{
        return nil;
    }
}

- (NSArray<AddressCard_2 *> *)lookupMatches:(NSString *)theName{
    NSMutableArray<AddressCard_2 *> *matches = [NSMutableArray array];
    for (AddressCard_2 *nextCard in book) {
        //        NSLog(@"lookupMatches loop %@", [nextCard name]);
        if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame) {
            [matches addObject:nextCard];
        }
    }
    return matches;
}

// 从数组中查找到匹配的所有对象？可以用indexOfObjectPassingTest。需要将它们存储在区块的数组中，并且不要设置stop指针为YES。
- (NSArray<AddressCard_2 *> *)lookupMatches2:(NSString *)theName{
    NSMutableArray<AddressCard_2 *> *matches = [NSMutableArray array];
    
    NSUInteger result = [book indexOfObjectPassingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        // NSLog(@"lookupMatches2 loop %@", [obj name]);
        if ([[obj name]caseInsensitiveCompare:theName] == NSOrderedSame) {
            NSLog(@"lookupMatches2 loop %@", [obj name]);
            [matches addObject:obj];
            return YES;
        }
        else{
            return NO;
        }
    }];
    
    if (result != NSNotFound) {
        return matches;
    }
    else{
        return nil;
    }
}


// 从数组中查找到匹配的所有对象？可以用indexesOfObjectsPassingTest。该方法返回NSIndexSet,包含数组中满足条件的所有元素的索引。
- (NSArray<AddressCard_2 *> *)lookupMatches3:(NSString *)theName{
    NSMutableArray<AddressCard_2 *> *matches = [NSMutableArray array];
    
    NSIndexSet *result = [book indexesOfObjectsPassingTest:^BOOL(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([[obj name]caseInsensitiveCompare:theName] == NSOrderedSame) {
            return YES;
        }
        else{
            return NO;
        }
    }];
    
    if (result != nil && result.count >0) {
        [result enumerateIndexesUsingBlock:^(NSUInteger idx, BOOL * _Nonnull stop) {
            [matches addObject:self->book[idx]];
        }];
        return matches;
    }
    else{
        return nil;
    }
}
- (void)sort{
    // 使用selector排序名：需要为比较的对象添加比较方法 compareNames
    //    [book sortUsingSelector:@selector(compareNames:)];
    
    // 使用区块排序NSMutableArray：不需要为比较的对象添加比较方法
    // 性能和sortUsingSelector一样，没有提升性能
    //    [book sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
    //        return [obj1 compare:obj2];
    //    }];
    //
    // 使用区块
    // 排序NSMutableArray：性能有提升
    [book sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [[obj1 name] compare: [obj2 name]];
    }];
}
@end
