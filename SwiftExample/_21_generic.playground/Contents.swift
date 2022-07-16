import Cocoa

// 泛型

// 1 函数泛型
func swap( v1: inout String, v2:inout String){
    let t:String = v1;
    v1 = v2;
    v2 = t;
}

func swap( v1: inout Int, v2:inout Int){
    let t:Int = v1;
    v1 = v2;
    v2 = t;
}

var s1:String = "A";
var s2:String = "B";
swap(&s1, &s2);
print(s1)   // B
print(s2)   // A

var n1:Int = 1;
var n2:Int = 2;
swap(&n1, &n2);
print(n1)   // 2
print(n2)   // 1


func swap2<T>( v1: inout T, v2:inout T){
    let t:T = v1;
    v1 = v2;
    v2 = t;
}

swap2(v1: &s1, v2: &s2)
print(s1)   // A
print(s2)   // B

swap2(v1: &n1, v2: &n2);
print(n1)   // 1
print(n2)   // 2

// 2 类泛型
class Printer<T>{
    func printV(t:T){
        print(t);
    }
}

var pInt = Printer<Int>();
pInt.printV(t: 100);    //  100

var pString = Printer<String>();
pString.printV(t: "NV");    // NV
