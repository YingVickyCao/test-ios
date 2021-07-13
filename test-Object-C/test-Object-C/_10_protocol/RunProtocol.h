//
//  RunProticol.h
//  test-Object-C
//
//  Created by hades on 2021/7/12.
//  Copyright © 2021 hades. All rights reserved.
//

#ifndef RunProticol_h
#define RunProticol_h

#import <Foundation/Foundation.h>

// @protocol :协议,类似于Java中接口
@protocol RunProtocol <NSObject>

-(void) run;
-(void) jump;

@end

#endif /* RunProticol_h */
