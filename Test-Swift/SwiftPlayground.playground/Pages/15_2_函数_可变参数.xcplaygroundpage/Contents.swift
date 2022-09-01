//: [Previous](@previous)

import Foundation

//: [Next](@next)

/**
 函数 - 可变参数 （Variadic Parameter）
 1 一个函数最多只能有1个可变参数
 */

func sum (_ nums: Int...) -> Int{
    var total = 0
    for item in nums{
        total += item
    }
    return total
}
sum(1, 2 , 3, 4, 5) // 15

// 2 紧跟在可变参数后面的参数不能省略参数标签
func test(_ nums: Int..., name:String, _ city:String="USN"){
    for item in nums{
        print(item)
    }
    print("name=\(name),city=\(city)")
}
/**
 10
 20
 name=Vicky,city=China
 */
test(10,20, name: "Vicky", "China")
/*
 10
 20
 name=Vicky,city=USN
 */
test(10,20, name: "Vicky")

/*
// error: a parameter following a variadic parameter requires a label
func test2(_ nums: Int..., _ name:String="Vicky", _ city:String="USN"){
    for item in nums{
        print(item)
    }
    print("name=\(name),city=\(city)")
}
test2(10,20)
test2(10,20,"Vicky", "China") // error : Cannot convert value of type 'String' to expected argument type 'Int'
*/
