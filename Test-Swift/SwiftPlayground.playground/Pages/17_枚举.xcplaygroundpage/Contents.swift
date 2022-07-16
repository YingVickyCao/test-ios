import Foundation

// 枚举

// Way 1 : 在代码中写
enum MyColor{
    case Red
    case Green
    case Yellow
}

var color = MyColor.Green;
color = MyColor.Red;
color = .Yellow;    // 知道它是一个enum，省略名字

// Way 2 : 实例值
enum MyNum{
    case One(Int, Int)
    case Two(String)
}
var num = MyNum.One(10, 10);
num = MyNum.One(12,20);
num = .One(30,30);
num = .Two("Two");


// Way 3 : 原始值
enum Week:Int{
    case Monday = 1
    case Tuesday = 2
}
var myWeek = Week.Monday;
myWeek = Week.Tuesday;
myWeek = .Tuesday;

// Use enum in code
switch myWeek {
case .Monday:
    print("day is Monday");
case .Tuesday:
    print("day is Tuesday");
default:
    print("Invalid day");
}
