//
//  _13_3_main_array_4_AddressCard.m
//  test-Object-C
//
//  Created by hades on 2021/7/22.
//  Copyright © 2021 hades. All rights reserved.
//

#import "AddressCard.h"
#import "AddressCard_2.h"

int main(int argc,const char* argv[]){
    @autoreleasepool {
        {
            NSString *name = @"Julia Kochan";
            NSString *email = @"jeabc@outlook.com";
            AddressCard *card = [[AddressCard alloc]init];
            [card setName:name];
            [card setEmail:email];
            [card print];
        }
        
        {
            NSString *name = @"Julia Kochan";
            NSString *email = @"jeabc@outlook.com";
            AddressCard_2 *card = [[AddressCard_2 alloc]init];
            [card setName:name];
            [card setEmail:email];
            [card print];
        }
    }
    return 0;
}
