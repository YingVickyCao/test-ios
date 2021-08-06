//
//  _13_3_main_array_4_AddressBook.m
//  test-Object-C
//
//  Created by hades on 2021/7/23.
//  Copyright © 2021 hades. All rights reserved.
//

#import "AddressBook.h"


int main(int argc, const char *argv[]){
    @autoreleasepool {
        AddressCard_2 *card1 = [[AddressCard_2 alloc]init];
        [card1 setName:@"Name_1" andEmail:@"name1@outlook.com"];
        
        AddressCard_2 *card2 = [[AddressCard_2 alloc]init];
        [card2 setName:@"Name_2" andEmail:@"name2@outlook.com"];
        
        AddressCard_2 *card3 = [[AddressCard_2 alloc]init];
        [card3 setName:@"Name_3" andEmail:@"name3@outlook.com"];
        
        AddressCard_2 *card4 = [[AddressCard_2 alloc]init];
        [card4 setName:@"Name_3" andEmail:@"name3_2@outlook.com"];
//        [card4 setName:@"Name_4" andEmail:@"name3_2@outlook.com"];
        
        AddressBook *book = [[AddressBook alloc]initWithName:@"Lina;s Address Book"];
        NSLog(@"Addres count after creation:%lu",[book count]);
        
        NSLog(@"\n");
        [book addCard:card2];
        [book addCard:card1];
        [book addCard:card3];
        [book addCard:card4];
        NSLog(@"Addres count after adding cards:%lu",[book count]);
        
        NSLog(@"\n");
        // 遍历数组：快速遍历
        [book list];
        
        NSLog(@"\n");
        // 遍历数组：enumerateObjectsUsingBlock
        [book list2];
        
        // 根据name 查找，只返回最前面的一个。
        NSLog(@"\n");
        NSLog(@"lookup---->");
        {
            AddressCard_2 *myCard = [book lookup:@"Name 3"];
            if (myCard != nil) {
                NSLog(@"Find the card,%@",myCard.name); // invoked: Find the card,Name 3
            }
            else{
                NSLog(@"Can not find the card");
            }
        }
        
        NSLog(@"lookup<----");
        
        
        NSLog(@"\n");
        NSLog(@"lookup2---->");
        {
            AddressCard_2 *myCard = [book lookup2:@"Name 3"];
            if (myCard != nil) {
                NSLog(@"Find the card,%@",myCard.name); // invoked: Find the card,Name 3
            }
            else{
                NSLog(@"Can not find the card");
            }
        }
        NSLog(@"lookup2<----");
        
        
        // 根据name 查找，返回多个。
        NSLog(@"\n");
        NSLog(@"lookupMatches---->");
        {
            NSArray<AddressCard_2*> *matchCards = [book lookupMatches:@"Name_3"];
            if (matchCards != nil) {
                for (AddressCard_2 *item in matchCards) {
                    NSLog(@"matchCards: %@, %@",item.name,item.email);
                }
            }
        }
        NSLog(@"lookupMatches<----");

        
        NSLog(@"\n");
        NSLog(@"lookupMatches2---->");
        {
            NSArray<AddressCard_2*> *matches = [book lookupMatches2:@"Name_3"];
            if (matches != nil) {
                for (AddressCard_2 *item in matches) {
                    NSLog(@"matchCards: %@, %@",item.name,item.email);
                }
            }
        }
        NSLog(@"lookupMatches2<----");
        NSLog(@"\n");

        
        NSLog(@"lookupMatches3---->");
        {
            NSArray<AddressCard_2*> *matches = [book lookupMatches3:@"Name_3"];
            if (matches != nil) {
                for (AddressCard_2 *item in matches) {
                    NSLog(@"matchCards: %@, %@",item.name,item.email);
                }
            }
        }
        NSLog(@"lookupMatches3<----");
        NSLog(@"\n");
        
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
}
