//
//  _13_3_Array_main_4_NSValue.m
//  test-Object-C
//
//  Created by hades on 2021/7/29.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>
struct MySize{
    int width;
    int height;
};
// typedef提供声明变量更简单的方式。
typedef struct MySize MySize;

// START ：subclass NSValue
@interface NSValue(MySize)
+(instancetype)valuewithMySize:(MySize)value;
@property (readonly)MySize mySizeValue;
@end

@implementation NSValue(MySize)
+ (instancetype)valuewithMySize:(MySize)value{
    return  [self valueWithBytes:&value objCType:@encode(Polygon)];
}
- (MySize)mySizeValue{
    MySize value;
    [self getValue:&value];
    return value;
}
@end
// END ：subclass NSValue

int main(int argc, const char *argv[]){
    @autoreleasepool {
        MySize size1;
        size1.width = 100;
        size1.height = 58;
        
        MySize size2;
        size2.width = 2;
        size2.height = 45;
        
        {
            //        https://developer.apple.com/documentation/foundation/nsvalue?language=objc
            // wrapping
            NSValue *sizeValue1 = [NSValue valueWithBytes:&size1 objCType:@encode(MySize)];
            NSValue *sizeValue2 = [NSValue valueWithBytes:&size2 objCType:@encode(MySize)];
            
            // unwrapping
            MySize size3;
            [sizeValue1 getValue:&size3];
            NSLog(@"%i,%i",size3.width, size3.height);  // 100,58
            
            // 把NSValue加入Array
            NSMutableArray *array = [NSMutableArray array];
            [array addObject:sizeValue1];
            [array addObject:sizeValue2];
            
            // 从Array 中取值
            MySize size4;
            //        [[array objectAtIndex:1]getValue:&size4];
            //        NSLog(@"%i,%i",size4.width, size4.height);  //  2,45
            NSValue *resultNSValue = [array objectAtIndex:1];
            [resultNSValue getValue:&size4];
            NSLog(@"%i,%i",size4.width, size4.height);  //  2,45
        }
        
        //
        {
            // wrapping
            NSValue *value1 = [NSValue valuewithMySize:size1];
            NSValue *value2 = [NSValue valuewithMySize:size2];
            
            // unwrapping
            MySize size3 = [value1 mySizeValue];
            NSLog(@"%i,%i",size3.width, size3.height);  // 100,58
            
            // 把NSValue加入Array
            NSMutableArray *array = [NSMutableArray array];
            [array addObject:value1];
            [array addObject:value2];
            
             // 从Array 中取值
            MySize size4 = [[array objectAtIndex:1]mySizeValue];
            NSLog(@"%i,%i",size4.width, size4.height);  // 2,45
        }
    }
    return 0;
}
