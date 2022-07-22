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

// where 用在 for
var nums = [1,2,-1,-2,3,5]
var sum = 0;
for item in nums where item > 0{ // where决定了num能不能进入大括号。等价于 continue
    sum = sum + item
} // 11
