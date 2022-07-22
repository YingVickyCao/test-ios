//: [Previous](@previous)

import Foundation

outer : for i in 1...4{
    for k in 1...4{
        if k == 3{
            continue outer
        }
        if(i == 3){
            break outer
        }
        print("i=\(i),k=\(k)")
    }
}//
/*
 i = 1, k = 1
 i = 1, k = 2
 i = 2, k = 1
 i = 2, k = 2
 */

print("等价于")
outer : for i in 1...4{
    for k in 1...4{
        if k == 3{
            break
        }
        if(i == 3){
            break outer
        }
        print("i=\(i),k=\(k)")
    }
}

print("等价于")
var flag = false;
for i in 1...4{  // Recommended
    if(i == 3){
        break
    }
    for k in 1...4{
        if k == 3{
            break
        }
        print("i=\(i),k=\(k)")
    }
}

//: [Next](@next)
