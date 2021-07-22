//
//  AddressCard.h
//  test-Object-C
//
//  Created by hades on 2021/7/22.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef AddressCard_h
#define AddressCard_h

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

-(void) setName: (NSString*) theName;
-(void) setEmail: (NSString*) theEmail;
-(NSString*) name;
-(NSString*) email;

-(void) print;

@end
#endif /* AddressCard_h */
