//: [Previous](@previous)

import Foundation

//: [Next](@next)

/**
 函数 - 参数标签
 */


/**
 1 修改函数标签
 */

func goToWork (time : String){
    print("time is \(time)")
}
// Go to work time 8:35
goToWork(time: "8:35") // time is 8:35


/**
 Recommended : at 用在外面， time 用在里面
 */
func goToWork (at time : String){
    print("time is \(time)")
}
// Go to work at 8:35 => 读起来更好理解
goToWork(at: "8:35")     // time is 8:35

/**
 
 2 用下划线_省略参数标签
 不建议这种方式，官方鼓励使用标签，因为更可读
 */

func sum(_ v1:Int, _ v2:Int) -> Int{
    return v1 + v2
}
// error: extraneous argument labels 'v1:v2:' in call
//sum(v1:10, v2:5)  // 因为用下划线_来省略标签，所以不能在写v1 和 v2
sum(10, 10)
