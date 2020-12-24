//
//  Person.h
//  test-Object-C
//
//  Created by hades on 2020/12/23.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

@interface Person3 : NSObject
{
    Dog *_dog;
}
- (void) setDog:(Dog *) newDog;
- (Dog *) dog;
@end
