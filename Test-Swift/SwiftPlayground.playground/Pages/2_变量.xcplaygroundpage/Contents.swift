import Foundation

// 变量
var str = "Hello, playground";
print("abc");   // abc

var x = 0.1, y = 0.2, z = 0.3;
print(x)
print(y)
print(z)

// 自动判断类型
var n = 3;
n = 4;

var n3 = n + 10 ;

// 强制设置类型
var age:Double = 15;
print(age)  //  158.0

var red, green, blue: Double;
red = 10;
green = 20;
print(red); // 10.0
print(green);   // 20.0

// 变量打印时叠加
print("hi,"+中国)
//print("hi,"+age) // error: binary
// operator '+' cannot be applied to operands of type 'String' and 'Double'
print("hi,\(age)")


// 变量，在初始化之前，都不能使用。
var width:Int;
//print(width) // ERROR: Variable 'width' used before being initialized
