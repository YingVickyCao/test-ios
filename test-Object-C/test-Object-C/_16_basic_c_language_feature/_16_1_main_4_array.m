//
//  _12_1_main_4_array.m
//  test-Object-C
//
//  Created by hades on 2021/7/14.
//  Copyright © 2021 hades. All rights reserved.
//

#import <Foundation/Foundation.h>

//int main(int argc,const char* argv[]){
//    @autoreleasepool {
//        {
//            int nums[10];
//
//            // set array value
//            for (int i = 0; i< 10; i++) {
//                nums[i] = i;
//            }
//
//            int result = 0;
//            // loop array
//            for (int i = 0; i< 10; i++) {
//                result += nums[i];
//            }
//            NSLog(@"%i",result);
//        }
//
//        // 初始化
//        {
//
//            int nums[5] = {1,2,3,4,5};
//            //            int nums[5] = {1,2,3};
//            /*
//             nums[0]=1
//             nums[1]=2
//             nums[2]=3
//             nums[3]=0
//             nums[4]=0
//             nums[5]=14
//             nums[6]=0
//             nums[7]=0
//             nums[8]=0
//             nums[9]=1
//             */
//
//            /**
//             nums[0]=1
//             nums[1]=2
//             nums[2]=3
//             nums[3]=4
//             nums[4]=5
//             nums[5]=14
//             nums[6]=0
//             nums[7]=0
//             nums[8]=0
//             nums[9]=1
//             */
//            for (int i = 0; i< 10; i++) {
//                // 访问超出index的值， 结果是随机的。
//                NSLog(@"nums[%i]=%i",i,nums[i]);
//            }
//        }
//
//        // 终止空字符
//        {
//            // '\0' :终止空字符
//            char world[] = {'H','O','\0'};
//            // %s 格式字符表示持续显示字符，直至遇到终止空字符
//            NSLog(@"%s",world); // HO
//
//            char world2[] = {'H','\0','O'};
//            NSLog(@"%s",world2); // H
//        }
//
//        // 多维数组
//        {
//            // 经常使用二维数组，二位数组通常用于矩阵
//            //            int M[4][5] = {
//            //                {10,5,-3,17,82},
//            //                {9,0,0,8,-7},
//            //                {32,20,1,0,14},
//            //                {0,0,8,7,6}
//            //            }
//
//            // 内括号可以省略。没有内括号，将按行进行初始化
//            //            int M[4][5] = {                10,5,-3,17,82,9,0,0,8,-7,32,20,1,0,14,0,0,8,7,6              };
//
//            int M[4][5] = {
//                {10,5,-3},
//                {9,0,0},
//                {32,20,1},
//                {0,0,8}
//            };
//
//            int colum = sizeof(M) / sizeof(M[0]);
//            int row = sizeof(M[0]) / sizeof(M[0][0]);
//
//            NSLog(@"%lu",sizeof(M));         // 80
//            NSLog(@"%lu",sizeof(M[0]));      // 20
//            NSLog(@"%lu",sizeof(M[0][0]));   // 4
//            NSLog(@"%i",row);                // 5
//            NSLog(@"%i",colum);              // 4
//
//            for(int i = 0; i < row; i++ ){
//                for (int j = 0; j< colum; j++) {
//                    NSLog(@"%i",M[i][j]);
//                }
//            }
//        }
//
//
//    }
//    return 0;
//}
