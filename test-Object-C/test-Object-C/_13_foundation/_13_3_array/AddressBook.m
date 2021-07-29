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


- (NSArray<AddressCard_2 *> *)lookupMatches:(NSString *)theName{
    NSMutableArray<AddressCard_2 *> *matchesCards = [NSMutableArray array];
    for (AddressCard_2 *nextCard in book) {
        if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame) {
            [matchesCards addObject:nextCard];
        }
    }
    return matchesCards;
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
    // 使用区块排序NSMutableArray：性能有提升
    [book sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [[obj1 name] compare: [obj2 name]];
    }];
}
@end
