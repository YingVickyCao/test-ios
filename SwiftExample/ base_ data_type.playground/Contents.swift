import Cocoa

// 1 Int
var n:Int = 6;

print(n);

print(Int.min)  // -9223372036854775808
print(Int.max)  // 9223372036854775807

print(Int8.min)  // -128
print(Int8.max)  // 127

print(UInt.min) // 0
print(UInt.max) // 18446744073709551615

// 2 Float:单精度
var pi:Float = 3.14;
print(pi);  //  3.14

// 3 Double:双精度
var pi_2:Float = 3.14;
print(pi_2);    // 3.14

// 4 TODO: 类型转换
// （1）Float -> Double : ok
var f_1:Float = pi+pi_2;
print(f_1);     // 6.28
print(pi+pi_2); // 6.28

// （2）Double -> Float : error
/**
 error: cannot convert value of type 'Float' to specified type 'Double'
     var  f_2:Double = pi+pi_2;
     ~~^~~~~
     Double()
 */
//var f_2:Double = pi+pi_2;
//print(f_2);


// 3）Int -> Float / Double
var max:Int = 10;
var doubleVar :Double = Double(max);
print(max)  // 10
print(doubleVar)    // 10.0


// (4) String -> Int, Float, Double
var str:String = "123";
// In Old API:var intVar:Int = str.toInt();
// In Old API:var intVar:Int = Int(str);
var intVar:Int? = Int(str);
print(str)  // 123
print(intVar)   // Optional(123)

var floatVar2:Float? = Float(str);
print(floatVar2) // Optional(123.0)

var doubleVar2:Double? = Double(str);
print(doubleVar2) // Optional(123.0)

var str2:String = "25.0";
var doubleVar3:Double? = Double(str2);
print(doubleVar3) // Optional(25.0)

//var intVar2 = Int(doubleVar3);
//print(intVar2)

// 5 二进制
let binary = 0b0010;
print(binary);      // 2

// 6 八进制
let octonary = 0o1276;
print(octonary);    // 702

// 7 十六进制
let hex=0x002;
print(hex);         // 2
//hex = 0x10.98;      // error: hexadecimal floating point literal must end with an exponent
//print(hex)

// 8 布尔值
let b_value:Bool = false;
print(b_value)      // false

// 9 类型别名 typealias
typealias V = String;
var info : V = "abc";
print(info);    // abc
info="hi, changed";
print(info);    // hi, changed
