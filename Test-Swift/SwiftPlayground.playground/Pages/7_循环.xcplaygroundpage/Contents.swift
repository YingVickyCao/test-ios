import Foundation

// 1 for

/*
 循环array
 */

/**
 1
 2
 3
 4
 5
 */
var intArray = [1,2,3,4,5];
for item  in intArray{
    print(item);
}

/*
 *
 5
 4
 3
 2
 1
 */
for item  in intArray.reversed(){
    print(item);
}

/*
 闭区间 a...b ([a,b])
 */
/**
 1
 2
 3
 **/
for i in 1...3{
    print(i)
}

let index_start = 1;
let index_end = 3;
// index is 1
// index is 2
// index is 3
for i in index_start...index_end{
    print("index is \(i)")
}


let animals = ["Dog","Tom","elephant"]
// Dog
// Tom
// elephant
for i in 0...2{
    print(animals[i])
}

let animals_rang = 0...2;
// Dog
// Tom
// elephant
for i in animals_rang{
    print(animals[i])
}
   

/*
 半闭区间 a...<b ([a,b))
 */
/**
 1
 2
 */
for i in 1..<3{
    print(i)
}

//  i 默认是let，需要时声明为var
print("--var i ->")
// 6
// 7
// 8
for var i in 1...3{
    i += 5
    print(i)
}
print("--var i <-")


// 假如用不到i，用_代替
for  i in 1...3{ // warning : Immutable value 'i' was never used; consider replacing with '_' or removing it
    print("123")
}
for  _ in 1...3{
    print("123")
}

/*
 单侧区间：让区间朝一个方向尽可能远
 */
let names = ["Sun","Brian","Jacky","Baidu","Swift"]
// Jacky
// Baidu
// Swift
for i in names[2...]{
    print(i)
}

// Sun
// Brian
// Jacky
for i in names[...2]{
    print(i)
}

//
// Sun
// Brian
for i in names[..<2]{
    print(i)
}


/**
 Print Sort may be different every time
 (key: "b", value: 2)
 (key: "c", value: 3)
 (key: "a", value: 1)
 
 (key: "a", value: 1)
 (key: "b", value: 2)
 (key: "c", value: 3)
 */
let dict = ["a":1,"b":2,"c":3];
for item in dict {
    print(item);
}

/**
 Print Sort may be different every time
 c-3
 a-1
 b-2
 
 b-2
 a-1
 c-3
 */
for(key,value) in dict{
    print("\(key)-\(value)");
}

// C-style for : Depressed in Swift 3
// error: C-style for statement has been removed in Swift 3
//for var i = 1; i < 2 ; i++ {
//    print(i)
//}


// 2 While
//var i = 1;
var i = 2;
while i < 2{
    print(i)
    i = i + 1;
}

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
