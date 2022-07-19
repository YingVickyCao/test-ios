import Foundation

// 3 Float:单精度
var pi:Float = 3.14;
print(pi);  //  3.14

// Double:双精度
// 默认是Double
let double_1 = 10.123456789123456789 // 10.12345678912346


// 1 十进制
let double_decimal = 125.0
// 125.0
// 1.25 乘以10的2次方
let double_decimal_1 = 1.25e2   // 125.0
// 1.25 乘以10的-2次方
let double_decimal_2 = 1.25e-2  // 0.0125

let double_decimal_3 = 12.1875  // 121.875
let double_decimal_4 = 12.1875e1// 121.875

// 2 十六进制
// 15 x 2^2
let double_hex_decimal_1=0xFp2  // 60
// 15 x 2^-2
let double_hex_decimal_2=0xFp-2 // 3.75
// C.3 x 2^0
let double_hex_decimal_3 = 0xC.3p0 // 12.1875
