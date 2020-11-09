import Cocoa

// 变量
var str = "Hello, playground";
print("abc");   // abc

// 自动判断类型
var n = 3;
n = 4;

var n3 = n + 10 ;

// 强制设置类型
var age:Double = 15;
print(age)  //  158.0


// UTF-8
var 中国="china";
print(中国);
中国 = "test 123";
print(中国);
中国 = "😂";
print(中国);

// 变量打印时叠加
print("hi,"+中国)
//print("hi,"+age) // error: binary operator '+' cannot be applied to operands of type 'String' and 'Double'
print("hi,\(age)")
