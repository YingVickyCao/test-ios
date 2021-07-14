//
//  _12_1_main_4_array.m
//  test-Object-C
//
//  Created by hades on 2021/7/14.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc,const char* argv[]){
    @autoreleasepool {
        {
            int nums[10];
            
            // set array value
            for (int i = 0; i< 10; i++) {
                nums[i] = i;
            }
            
            int result = 0;
            // loop array
            for (int i = 0; i< 10; i++) {
                result += nums[i];
            }
            NSLog(@"%i",result);
        }
        
        {
            //            int nums[5] = {1,2,3,4,5};
            int nums[5] = {1,2,3};
            /*
             nums[0]=1
             nums[1]=2
             nums[2]=3
             nums[3]=0
             nums[4]=0
             nums[5]=14
             nums[6]=0
             nums[7]=0
             nums[8]=0
             nums[9]=1
             */
            for (int i = 0; i< 10; i++) {
                NSLog(@"nums[%i]=%i",i,nums[i]);
            }
        }
        
    }
    return 0;
}
