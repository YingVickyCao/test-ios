import Foundation

// 协议

protocol IPerson{
    func getCountry() -> String
}

// 4 协议继承
protocol IStu : IPerson{
    // 1 属性：可读可写
    var name:String{
        get set
    }
    
    // 2 属性：可读
    var no:Int{
        get
    }
    
    func getName() -> String;
}


class Person{
    
}

// 3 实现协议
//class Stu :IStu{
// 4 类先继承父类，再实现协议
class Stu :Person, IStu{
    var my_name :String = "A";
    
    var name:String{
        get{
            return my_name;
        }
        set{
            my_name = newValue;
        }
    }
    
    var no:Int{
        get{
            return 1;
        }
    }
    
    func getName() -> String {
        return my_name;
    }
    
    // 4 类实现时，有协议继承，父协议内容也要实现
    func getCountry() -> String {
        return "China";
    }
}

var s:IStu = Stu();

// error: value of type 'IStu' has no member 'my_name'
//print(s.my_name)

print(s.name)   //  A

s.name = "B";
print(s.name)   // B

print(s.getName())  // B

print(s.no) // 1

print(s.getCountry()) // China

// 5 协议合并
// error: 'protocol<...>' composition syntax has been removed; join the protocols using '&'
//func hi(s:protocol<IPerson,IStu>){
func hi(s:IPerson & IStu){
    print(s.getCountry())   // China
    print(s.getName())      // B
}

hi(s: s);
