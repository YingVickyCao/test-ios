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


// 2 Swift中结构体，可以调用方法。
// 其他语言：只有对象才能调用方法。
var num = 1;
num.distance(to: 10); // 9
