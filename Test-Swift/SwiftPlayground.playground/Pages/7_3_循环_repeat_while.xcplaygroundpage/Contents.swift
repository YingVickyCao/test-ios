//: [Previous](@previous)

import Foundation

// 3 repeat while
// repeat while, 相当于 C 语言的do-while,至少执行1次

// Old version < Swift 4
// error: 'do-while' statement is not allowed; use 'repeat-while' instead
//var j = 2;
//do {
//    print(j);
//    j = j+1;
//}while (j < 2)

// Swift >=4
var j = 2;
repeat {
    print(j);
    j = j+1;
}while (j < 2)

// num is -1
var num = -1;
repeat{
    print("num is \(num)")
}
while(num > 0)


//: [Next](@next)
