import Cocoa

// Loop

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
