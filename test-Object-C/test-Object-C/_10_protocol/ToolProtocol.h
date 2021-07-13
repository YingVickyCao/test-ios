//
//  ToolProtocol.h
//  test-Object-C
//
//  Created by hades on 2021/7/12.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef ToolProtocol_h
#define ToolProtocol_h

#import <Foundation/Foundation.h>
#import "RunProtocol.h"

@protocol ToolProtocol <NSObject,RunProtocol>

@required
-(void)plane;
-(void)train;

@optional
-(void)name;

@end

#endif /* ToolProtocol_h */
