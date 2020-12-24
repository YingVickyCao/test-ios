//
//  Moviegoer.h
//  test-Object-C
//
//  Created by hades on 2020/12/24.
//  Copyright © 2020 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IBuyTicket <NSObject>
- (void) buyTicket: (NSString *) filmName;
@end

@interface Moviegoer : NSObject
@property (weak) id<IBuyTicket> delegate;
@end

NS_ASSUME_NONNULL_END
