//import Foundation
import Foundation

// 闭包

//var intList = [3,1,2];
//sort(&intList, {(a:Int,b:Int)-> Bool in return a > b})

// 以函数形式传入
var intList = [3,1,2];
func order(v1: Int, v2: Int) -> Bool {
    return v1 >= v2
}
intList.sort(by: order);    //  3,2,1

// 以闭包的方式
intList.sort(by: {(v1:Int,v2:Int)-> Bool in return v1 > v2});
//根据上下文推断参数类型和返回类型
intList.sort(by: {v1, v2 in return v1 >= v2})
//单表达式闭包的隐式返回 单行表达式闭包可以通过省略 return
intList.sort(by: {v1, v2  in v1 >= v2 })
//参数名称缩写 Swift自动为内联闭包提供了参数名称缩写功能，你可以直接通过 $0，$1，$2... 来顺序调用闭包的参数。
intList.sort(by: {$0 >= $1})
//运算符方法
intList.sort(by: >=)
//尾随闭包 如果将一个闭包表达式作为函数的最后一个参数，使用尾随闭包可以增强可读性
intList.sort(){$0 >= $1}
//如果闭包表达式作为函数的唯一实参，并且使用了尾随闭包，则函数名后面的小括号可以省略
intList.sort{$0 >= $1}
print(intList)
