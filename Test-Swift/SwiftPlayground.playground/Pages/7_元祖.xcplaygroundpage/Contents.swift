import Foundation

var info = ("abc", 10, 54.6);
print(info)         // ("abc", 10, 54.6)
print(info.0)       // abc
print(info.1)       // 10
print(info.2)       // 54.6


func getStuInfo() -> (String,Int){
    return ("def", 20);
}

var stu = getStuInfo();
print( stu.0);  // def
print( stu.1);  // 20
