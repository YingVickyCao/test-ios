import Foundation

// 元祖 （tuple）
// (String, Int, Int)
var info = ("abc", 10, 54.6);
print(info)         // ("abc", 10, 54.6)
print(info.0)       // abc
print(info.1)       // 10
print(info.2)       // 54.6

// 如何定义元祖
let http404Error=(404,"Not Found")
print("response status code is \(http404Error.0)")

let (statusCode, statusMessage)=http404Error
print("response status code is \(statusCode)")
// _表示忽略
let (statusCode2,_) = http404Error
print("response status code is \(statusCode2)")

let http200Status=(statusCode:500,desc:"OK")
print("response status code is \(http200Status.statusCode)")

// 从函数返回一个元祖
func getStuInfo() -> (String,Int){
    return ("def", 20);
}

var stu = getStuInfo();
print( stu.0);  // def
print( stu.1);  // 20
