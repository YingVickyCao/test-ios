//
//  main.m
//  test-Object-C
//
//  Created by hades on 2020/12/24.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Moviegoer.h"
#import "TicketScalper.h"

int main(int argc, const char * argv[]){
    @autoreleasepool {
        Moviegoer *p = [[Moviegoer alloc]init];
        TicketScalper *huangXiu = [[TicketScalper alloc]init];
        
        p.delegate = huangXiu;
        
        if(p.delegate && [p.delegate respondsToSelector:@selector(buyTicket:)]){
            [p.delegate buyTicket:@"西游记"];
        }
    }
    return 0;
}
