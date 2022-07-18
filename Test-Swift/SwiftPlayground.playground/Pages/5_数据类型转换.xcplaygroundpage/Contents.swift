import Foundation

//  类型转换

// 1 整数转换
let int_1 :Int16 = 100;
let int_2:Int8 = 1;
//let int_3 = int_1 + int_2;        // error: binary operator '+' cannot be applied to operands of type 'UInt16' and 'UInt8'
let int_3 = int_1 + Int16(int_2)

var pi_2:Double = 3.14;
print(pi_2);    // 3.14


// （1）Float -> Double : ok
//var f_1:Float = pi_2+pi_2;
//print(f_1);     // 6.28
//print(pi+pi_2); // 6.28

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

let int = 3;
let double = 0.14159;
//let pi=int + double; //  error: binary operator '+' cannot be applied to operands of type 'Int' and 'Double'
let pi = Double(int) + double // 3.14159
let int_pi = Int(pi)    // 3

// 两个字面值可以直接相加，因为字面量本身没有明确的类型
// 类型是给常量、变量使用的，
let result = 3 + 0.1459 // 3.1459

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

// 9 类型别名 typealias
typealias V = String;
var info : V = "abc";
print(info);    // abc
info="hi, changed";
print(info);    // hi, changed
