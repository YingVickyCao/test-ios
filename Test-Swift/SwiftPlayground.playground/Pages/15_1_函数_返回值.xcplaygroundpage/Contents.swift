import Foundation

/**
 函数返回值
 */

// Fuction

// 1 函数 - 返回值 - 有返回值
func pi() -> Double{
    return 3.14
}
pi() // 3.14



//形参的默认是let，也只能是let
func plus(v1:Int, v2 : Int) -> Int{
    return v1 + v2;
}
plus(v1: 10, v2: 20); // 30


// 2 函数 - 返回值 - 没有返回值
// Way 1
//func hi()-> Void{
//    print("hi")
//} // hi

// Way 2
//func hi() -> (){ // 认为()是一个空元祖
//    print("hi")
//}

// Way 3
func hi(){
    print("hi")
}
hi() // hi


/**
 3 函数  -  返回值  -  隐式返回 （Inplicit Return）
 如果整个函数体是单一的表达式，那么函数会隐式返回这个表达式
*/

func sum(v1:Int, v2:Int) -> Int{
    v1 + v2;
    // 等价于
    //    return v1 + v2;
}
sum(v1: 1, v2: 20)


/**
 4  函数 -  返回值  -  返回元祖：实现多返回值
 */
func math(v1: Int, v2:Int) -> (sum:Int, average:Int, min:Int){
    let sum = v1 + v2;
    let average = (v1 + v2)/2;
    let min = v1 < v2 ? v1 : v2;
    return (sum,average,min)
}

let result = math(v1: 20, v2: 30)

result.average  // 25
result.min      // 20
result.sum      // 50
