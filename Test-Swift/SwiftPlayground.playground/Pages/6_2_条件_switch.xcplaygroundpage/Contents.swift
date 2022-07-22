import Foundation

// 1 特殊 ：Switch 每个case 默认带break，一旦满足，后面的case 就不再运行。
// 特殊： case 、default后面不能能写大括号

var num = 2;
switch num {
case 1:
    print(1)
    
case 2:
    print(2)  // invoke this step
    
case 5:
    print(5)
    
default:
    print("This is a default sentence")
} // 2

// 2 特殊 ：case、default 后面至少有一条语句，如果不想做任何事情，加个break
num = 3
switch num {
case 1:
    print(1)
    
case 2:
    print("2")
    
default:
    //可以用 分号 代替 break 吗？不能。因为分号不代表一条语句
    // ;   // error: ';' statements are not allowed
    break
}

// 3 特殊 ：switch必须保证处理所有的情况。 如果已经保证已经处理所有情况，也可以不必使用 default
num = 2
switch num {
case 1:
    print(1)
    
case 2:
    print(2)
    
default:  // 没有default， // error : Switch must be exhaustive
    print("This is a default sentence")
} // 2

enum ExaminationResult {case yes, no }
let result = ExaminationResult.yes

switch result {
case ExaminationResult.yes:
    print("yes")
case ExaminationResult.no:
    print("no")
} // yes


// 由于已经确定answer是Answer类型，因此可以省略Answer
switch result {
case .yes:
    print("yes")
case .no:
    print("no")
    //case .ask: // error: type 'ExaminationResult' has no member 'ask'
    //    print("ask")
} // yes


// 4 特殊：Swift 因为自动加了break， 因此默认不写break，并不会贯穿到后面的条件
// falltrough 可以实现贯穿效果
num = 2
switch num {
case 1:
    print(1)
    
case 2:
    print("2 or 3")
    
case 3:
    print("2 or 3")
    
case 4,5 :
    print("4 or 5")
    
default:
    print("This is a default sentence")
} // 2 or 3


// 复合条件 ：处理多个条件
num = 2
switch num {
case 1:
    print(1)
    
// 由于case 2 位true，遇到fallthrough，直接跳到 case 3的打印语句语句。因为case 3 默认带了break，因此执行print("2 or 3")，不再继续执行
case 2: // 复合条件 用fallthrough实现
    fallthrough
    
case 3:
    print("2 or 3")
    
case 4,5 :
    print("4 or 5")
    
default:
    print("This is a default sentence")
} // 2 or 3



//复合条件，也可以用这样写
num = 2
switch num {
case 1:
    print(1)
    
    //case 2: // error: 'case' label in a 'switch' must have at least one executable statement
    //case 3:
    //    print("2 or 3")
    
case 2,3 : // 复合条件 用 ，实现
    print("2 or 3")
    
case 4,5 :
    print("4 or 5")
    
default:
    print("This is a default sentence")
} // 2 or 3



// 5 Switch support float
var f = 1.5;
switch f {
case 1.5:
    print("1.5")
    
    //    case 1.50: //error : Literal value is already handled by previous pattern; consider removing it
    //        print("1.50")
    
case 1.51:
    print("1.51")
    
default:
    print("default")
} // 1.5

// 6 Switch support bool
var flag = false;
switch flag {
case true:
    print("true")
default:
    print("false")
} // false

// 7 特殊 ： Switch support 字符串
var str = "abc";
switch str {
case "def":
    print("a")
case "abc":
    print("abc")
default:
    print("default")
} // abc

// 8 特殊 ： Switch support 字符
let char : Character = "A"
switch char{
case "A":
    print("The letter A")
    
default:
    print("Not letter A")
} // The letter A


// 9 区间匹配
let count = 15;
switch count {
case 0...10:
    print("[0,10]")
case 11...20:
    print("[11,20]")
default:
    print("default")
} // [11,20]

// 10 带间隔的区间值
let hours = 11
let hoursInterval = 2
for tickMark in stride(from: 4, to: hours, by: hoursInterval){ // [4,12],间隔为2
    print(tickMark)
} // 4,6,8,10


// 11 元组匹配
// 元组不关心的值，用_代替
// 关于case匹配问题，属于模式匹配（Pattern Matching）的范畴

// 判断点是否在正方形中
let point = (1,1)
switch point{
case (0,0):  // 原点
    print("the origin point")
case (_,0):  // 只要求右边是0
    print("on the x-axis")
    
case (0,-1):
    print("on the y-axis")
    
case (-2...2,-2...2):
    print("inside the box")
default:
    print("outside the box")
} // inside the box


var response = (true,"success");
switch response {
case (true,"success"):
    print("true, success")
    
case (false,"success"):
    print("false, success")
    
default:
    print("default")
}

var response2 = (true,"success");
switch response2 {
case (_,"success"): // 元组：不关心的值，用_代替
    print("success")
    
default:
    print("default")
}

print("---------")

var n3 = (10,"failed");
switch n3 {
case (_,"success"):
    print("success")
case (1...10, _):
    print("[1,10]") // 元组不关心的值，用_代替
default:
    print("default")
}


// 12 值绑定(Value Binding)
// Value Binding : 把值提取出来
let point2 = (2,0)
switch point2{
case (let x,0): // （1）只匹配后边的值，如果匹配了，赋值给x。（2）必要时let也可以改成var
    print("on the x-axis,x is \(x)")
    
case (0,let y):
    print("on the y-axis, y is \(y)")
    
case let(x,y):
    print("at (\(x),\(y)")
} // on the x-axis,x is 2


// 13 where
// where 用在 swith
let point3 = (1,-1)
switch point3{
case let (x,y) where x == y:
    print("x==y")
case let (x,y) where x == -y:
    print("x==-y")
case let (x,y):
    print("\(x),\(y) is just some point")
} // x==-y

// where 用在 for
var nums = [1,2,-1,-2,3,5]
var sum = 0;
for item in nums where item > 0{ // where决定了num能不能进入大括号。等价于 continue
    sum = sum + item
} // 11
