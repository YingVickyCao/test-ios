//
//  AddressBook.h
//  test-Object-C
//
//  Created by hades on 2021/7/22.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef AddressBook_h
#define AddressBook_h

#import "AddressCard_2.h"

@interface AddressBook : NSObject

@property (nonatomic, copy)NSString *bookName;
@property (nonatomic, strong)NSMutableArray *book;

-(instancetype) initWithName:(NSString*) name;
-(void) addCard : (AddressCard_2 *)theCard;
-(unsigned long) count;
// 遍历数组
-(void) list;
// 遍历数组
-(void) list2;

@end

#endif /* AddressBook_h */
