//: [Previous](@previous)

import Foundation

//: [Next](@next)

/**
 函数 - 输入输出参数 (In - Out Parameter )
*/

// Example : 参数是只读，不能修改
//var n  = 10
//func add(_ num:Int){
//    // error : Left side of mutating operator isn't mutable: 'num' is a 'let' constant
//    // 原因：参数是只读
//    num += 10
//}
//add(n)



// 可以用inout定义一个输入输出参数：可以在函数内部修改外部实参的值
var n  = 10
func add(_ num: inout Int){
    // error : Left side of mutating operator isn't mutable: 'num' is a 'let' constant
    // 原因：参数是只读
    num += 10
}
// 传递实参被
add(&n)
print(n)  // 20


func swap(_ v1: inout Int, _ v2: inout Int){
    let temp = v1;
    v1 = v2;
    v2 = temp;
}
var num1=10;
var num2=5;
swap(&num1, &num2)
print(num1)
print(num2)

func swap2(_ v1: inout Int, _ v2: inout Int){
    
}
