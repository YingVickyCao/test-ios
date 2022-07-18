// 1 只能赋值 1 次
let n = 10;
//n = 20; // ERROR:Cannot assign to value: 'n' is a 'let' constant

let age:Int;
age  = 10;
//age = 20 // ERROR:Immutable value 'age' may only be initialized once


// 2 声明时指明定义类型，因此，不能给它设置
//let five
//five = 10 // ERROR:Found an unexpected second identifier in constant declaration; is there an accidental break?


// 3 Swift的特殊之处：常量的值不要求在编译时确定，但在使用前必须赋值 1 次。  常量可以在在程序运行时确定。
// 一般语言，常量必须在编译时确定 int test = 10
var num = 10;
num=num+1;
let test = num;
print(test);    // 11


func getAge()->Int{
    return 100
}

let age2 = getAge();
print(age2) // 100

// 4 常量，在初始化之前，都不能使用
let height:Int;
//print(height) // ERROR:Constant 'height' used before being initialized
