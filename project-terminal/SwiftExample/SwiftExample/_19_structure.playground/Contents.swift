import Cocoa

struct Stu{
    var name:String = "Name1";
    var no:Int = 1;
    
    func getName() -> String {
        return name;
    }
}

var s = Stu();
print(s.getName());
print(s.name)

var s2 = Stu(name:"Abc", no:100);
print(s2.getName());
print(s2.name)
