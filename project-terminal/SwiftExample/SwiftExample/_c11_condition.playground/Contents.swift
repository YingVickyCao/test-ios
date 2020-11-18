import Cocoa

// 1 IF

var a = 5;
if(a  > 10){
    print("a>10")
}
else{
    print("a<=10")
}


// 2 Switch
var num = 5;
switch num {
case 1:
    print(1)
    
case 2:
    print(2)
    
//  一旦满足，下面的case 就不再运行。
case 5:
    print(5)
    
default:
    print("This is a default sentence")
}


switch num {
case 1:
    print(1)
    
case 2:
    print(2)
    
case 4,5 :  // 合并多个条件
    print("4 or 5")
    
default:
    print("This is a default sentence")
}

switch num {
case 1:
    print(1)
    
case 2:
    print(2)
    
case 5 :
    print("5")
    fallthrough // 一个条件case满足了，还想继续执行下i一条case
    
case 6 :
    print("then 6")
    fallthrough
    
default:
    print("This is a default sentence")
}

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
