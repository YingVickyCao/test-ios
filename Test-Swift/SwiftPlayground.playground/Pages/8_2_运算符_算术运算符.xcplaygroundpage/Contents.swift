import Foundation

// 2 算术运算符
var a :Int = 2 + 10 ;
a = 2 - 10;
a = 2 * 10;
a = 2 / 10;
a = 2 % 10;


// 从Swift3开始，去掉了自增运算符、减运算符，因为可读性差。
var age = 100;
//age++; // error: cannot find operator '++' in scope; did you mean '+= 1'?
//age--;   // error: cannot find operator '--' in scope; did you mean '-= 1'?
// ++age
// --age
// 不同的编译器得出的结果不同
// ++age + ++age
