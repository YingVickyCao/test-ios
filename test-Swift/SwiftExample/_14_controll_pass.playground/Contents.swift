import Cocoa


// 控制传递
var array = [1,2,3,4,5,6,7,8,9,10];

// 1 break
/*
 1
 2
 3
 4
 */
for item in array {
    if(item == 5){
        break;
    }
    print(item);
}

// 2 continue
/**
 1
 2
 3
 4
 6
 7
 8
 9
 10
 */
for item in array {
    if(item == 5){
        continue;
    }
    print(item);
}

// 3 label
/**
 break L1
 
 100
 end swift
 */

/**
 break:
 
 100
 end swift
 end swift
 400
 end swift
 */
var array3 = [100,200,300,400];
L1:for item in array3 {
    switch item {
    case 200:
        break L1;   // 使用标签，终止for 循环
    //        break;        // 不使用标签，终止switch
    case 300:
        continue L1;
    default:
        print(item)
    }
    print("end swift")
}

// 4 failtrough : 贯穿
/**
 A
 B
 C
 */
var array4 = ["A","B","C"];
for item in array4 {
    switch item {
    case "B":
        fallthrough
    default:
        print(item)
    }
}

/**
 A
 C
 */
var array5 = ["A","B","C"];
for item in array5 {
    switch item {
    case "B":
        break
    default:
        print(item)
    }
}
