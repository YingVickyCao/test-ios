import Foundation

// 1 Int

// Swift中Int是一个struct
// public struct Int
var age:Int = 10;
// Int在64 位的机器，
print(age.bitWidth) // 64 => 64位=8个字节
print(Int.bitWidth) // 64

// UInt8是8位=1个字节
print(UInt8.bitWidth) //8

print(Int.max)
print(UInt8.max)

var n:Int = 6;
print(Int.min)  // -9223372036854775808
print(Int.max)  // 9223372036854775807

print(Int8.min)  // -128
print(Int8.max)  // 127

print(UInt.min) // 0
print(UInt.max) // 18446744073709551615


// Swift中结构体，可以调用方法。
// 其他语言：只有对象才能调用方法。
var num = 1;
num.distance(to: 10); // 9


// 2 二进制-0b
let int_binary = 0b0010;
print(int_binary);      // 2

// 3 八进制 - 0o
let int_octonary = 0o1276;
print(int_octonary);    // 702

// 4 十六进制 - 0x
let int_hex=0x002;
print(int_hex);         // 2


// 5  整数、浮点数可以添加额外的零或下划线来增加可读性
100_1000                // 1001000, 1百万
1_000_000.000_000_1     // 1001000
000123.456              // 123.456, 对齐方式
