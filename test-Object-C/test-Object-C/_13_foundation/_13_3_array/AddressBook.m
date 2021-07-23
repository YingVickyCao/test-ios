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

- (unsigned long)count{
    return [book count];
}

// 遍历数组
- (void)list{
    for (AddressCard_2 *theCard in book) {
        NSLog(@"%-20s     %-20s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
}
// 遍历数组
- (void)list2{
   
}
@end
