//
//  Person3.h
//  test-Object-C
//
//  Created by hades on 2020/12/24.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog2.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person4 : NSObject
{
    Dog2 *dog;
}
// strong 只适合在 ARC 下使用
//@property (strong) NSString *str;

// (retain) 可以在MRC 下使用
@property (retain) Dog2 *dog;
@end

NS_ASSUME_NONNULL_END
