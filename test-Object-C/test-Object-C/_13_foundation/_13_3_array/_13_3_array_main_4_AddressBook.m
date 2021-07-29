//
//  _13_3_main_array_4_AddressBook.m
//  test-Object-C
//
//  Created by hades on 2021/7/23.
//  Copyright © 2021 hades. All rights reserved.
//

#import "AddressBook.h"
/*
int main(int argc, const char *argv[]){
    @autorele    asepool {
        AddressCard_2 *card1 = [[AddressCard_2 alloc]init];
        [card1 setName:@"Name 1" andEmail:@"name1@outlook.com"];
        
        AddressCard_2 *card2 = [[AddressCard_2 alloc]init];
        [card2 setName:@"Name 2" andEmail:@"name2@outlook.com"];
        
        AddressCard_2 *card3 = [[AddressCard_2 alloc]init];
        [card3 setName:@"Name 3" andEmail:@"name3@outlook.com"];
        
        AddressCard_2 *card4 = [[AddressCard_2 alloc]init];
        [card4 setName:@"Name 3" andEmail:@"name3_2@outlook.com"];
        
        AddressBook *book = [[AddressBook alloc]initWithName:@"Lina;s Address Book"];
        NSLog(@"Addres count after creation:%lu",[book count]);
        
        [book addCard:card2];
        [book addCard:card1];
        [book addCard:card3];
        [book addCard:card4];
        NSLog(@"Addres count after adding cards:%lu",[book count]);
        
        // 遍历数组：快速遍历
        [book list];
        // 遍历数组：enumerateObjectsUsingBlock
        [book list2];
        
        // 根据name 查找，只返回最前面的一个。
        AddressCard_2 *myCard = [book lookup:@"Name 3"];
        if (myCard != nil) {
            NSLog(@"Find the card,%@",myCard.name); // invoked: Find the card,Name 3
        }
        else{
            NSLog(@"Can not find the card");
        }
        
        // 根据name 查找，返回多个。
        NSArray<AddressCard_2*> *matchCards = [book lookupMatches:@"Name 3"];
        if (matchCards != nil) {
            for (AddressCard_2 *item in matchCards) {
                NSLog(@"matchCards: %@, %@",item.name,item.email);
            }
        }
        
        // removeObjectIdenticalTo vs removeObject
        AddressCard_2 *card3_2 = [[AddressCard_2 alloc]init];
        [card3_2 setName:@"Name 3" andEmail:@"name3@outlook.com"];
        NSLog(@"Count before remove card:%lu",[book count]);
        [book removeCard:card3_2];
        NSLog(@"Count after remove card:%lu",[book count]);
        
        NSLog(@"Count before remove card:%lu",[book count]);
        [book removeCard2:card3_2];
        NSLog(@"Count after remove card:%lu",[book count]);
        
        // sort
        [book list];
        [book sort];
        [book list];
        
    }
    return 0;
}*/
