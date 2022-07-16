import Foundation

// 1 赋值运算符
var str = "Hello, playground"

// 2 算术运算符
var a :Int = 2 + 10 ;
a = 2 - 10;
a = 2 * 10;
a = 2 / 10;
a = 2 % 10;


// 3 比较运算符
// <, <=
// >, >=
// !=, ==
var n1 = 2;
var n3 = 3;
if (n1 < n3) {
    print(2)
}
else{
    print(3)
}

// 4 三元运算符
var flag:Int = (2<3) ? 2 : 3;
print(flag);


// 5 逻辑运算符
// &&
// ||
// !
var n2:Int = 10;
if((n2 < 5)&&(n2 > 100)){
    print("true");
}
else{
    print("false");
}

if(!(n2 > 5)){
    print("<5");
}
