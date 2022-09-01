//: [Previous](@previous)

import Foundation

//: [Next](@next)

/**
函数 - 默认参数值(Default Parameter Value)
 */

/**
 函数可以有默认参数。
 C++ 的默认参数限制：必须从右往左，因为参数传递是从左到右。因为Swft拥有参数标签，因此并没有此类限制
 
 void test(int a = 2, int b, int c, int d = 5){
 编译不通过
 }
 test(1,2） // 1 不知道给a，还是c
 
 void test(int a , int b, int c=2, int d = 5){
 编译通过
 }
 test(1,2） // a = 1, b = 2
 */
func check(name:String="nobody", age:Int, job:String="none"){
    print("name=\(name), age=\(age), job=\(job)")
}

// name=Rose, age=25, job=Dotter
check(name: "Rose", age: 25, job: "Dotter")

// name=Vicky, age=27, job=none
check(name: "Vicky", age: 27)

// name=nobody, age=10, job=Computer
check(age: 10, job: "Computer")

// name=nobody, age=15, job=none
check(age: 15)
