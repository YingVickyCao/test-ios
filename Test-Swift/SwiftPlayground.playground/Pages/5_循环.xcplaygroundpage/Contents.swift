import Foundation

// 1 for

// for in

/**
 1
 2
 3
 **/
for index in 1...3{
    print(index)
}


/**
 1
 2
 */
for index in 1..<3{
    print(index)
}

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
while i < 2
{
    print(i)
    i = i + 1;
}

// 3 repeat while
// Old version <Swift 4
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
