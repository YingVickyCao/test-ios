//
//  ClassA.h
//  test-Object-C
//
//  Created by hades on 2021/7/5.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef ClassA_h
#define ClassA_h

#import <Foundation/Foundation.h>

@interface ClassA : NSObject
{
    // 在接口部分直接声明实例变量x，是为了使得子类能够访问到。
    int x;
}

-(void) initVar;
@end

#endif /* ClassA_h */
