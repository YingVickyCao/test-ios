import Foundation

// 1 特殊：Switch 每个case 默认带break，一旦满足，后面的case 就不再运行。
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

// 2 特殊：Switch 合并多个条件
switch num {
case 1:
    print(1)
    
//case 2: // error: 'case' label in a 'switch' must have at least one executable statement
//case 3:
//    print("2 or 3")
    
case 2,3 :
    print("2 or 3")
    
case 4,5 :
    print("4 or 5")
    
default:
    print("This is a default sentence")
} // 2 or 3


// 特殊：Swift 的case 因为自动加了break，不能实现贯穿效果。一个条件case满足了，还想继续执行下一条case，用fallthrough
num = 2
switch num {
case 1:
    print(1)
    
case 2:
    print(2)
    fallthrough
    
case 5 :
    print("5")
    
case 6 :
    print("then 6")
    fallthrough
    
default:
    print("This is a default sentence")
} // 2，5

// Switch support float
var f = 1.5;
switch f {
    //case 1.5:
    //    print("1.5")
    
    //case 1.50:
    //    print("1.50")
    
case 1.51:
    print("1.51")
    
default:
    print("default")
}

// Switch support bool
var flag = false;
switch flag {
case true:
    print("true")
default:
    print("false")
}

// Switch support string
var str = "abc";
switch str {
case "a":
    print("a")
    
case "abc":
    print("abc")
default:
    print("default")
}


// Switch support 区间
var n2 = 15;
switch n2 {
case 0...10:
    print("[0,10]")
case 11...20:
    print("[11,20]")
default:
    print("default")
}


var n3 = (10,"failed");
switch n3 {
case (_,"success"):
    print("success")
case (1...10, _):
    print("[1,10]") // 区间：不关心的值，用_s代替
default:
    print("default")
}

// Switch support 元组
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
// Switch 支持 Value Binding
// Value Binding : 把值提取出来
let response3 = (0,"success");
switch response3 {
case (0,let state):
    print(state);
case (let errorCode,_):
    print(errorCode);
}

let response4 = (0,"success");
switch response4 {
case let (errorCode, state):
    print(String(errorCode) + ","+state);
    fallthrough
case (let errorCode,_):
    print(errorCode);
}

// 支持额外的判断
let response5 = (1,"success");
switch response5 {
case (1,let state) where state != "success":
    print(state);
case (let errorCode,_):
    print(errorCode);
}
