import Cocoa

// Class
// 1 Define a class

class Stu {
    var no = 1;
    var name = "";
    
    func getNo() -> Int {
        return no;
    }
    func getName() -> String {
        return name;
    }
    
    func setName(_ tname:String){
        name = tname;
    }
}

var s1 = Stu();
print(s1.getNo());  //  1
s1.setName("A");
print(s1.getName());    // A

// 2 类是值传递还是引用传递？引用传递
var s2 = s1;
s2.name = "B";
print(s1.getName());    // B
print(s2.getName());    // B

// 3 恒等式
if(s1 === s2){  // true
    print("Point to same adrress");
}

if(s1 !== s2){ // false
    print("Point to different adrress");
}

// 4 构造函数和析构函数
class Tea {
    var name :String = "Green Tea";
    //    var address:String;       // Way 1 Way 3
    var address:String = "ab";  // Way 2
    
    // 构造函数
    init(_ name:String, _ address:String) {
        self.name = name;   // = java this.name
        self.address = address;
    }
    
    // Way 1 : OK
    //    init() {
    //        name = "Green Tea";
    //        address = "";
    //    }
    
    // Way 2 :OK
    init() {
    }
    
    /**
     // Way 3 : error
     error: return from initializer without initializing all stored properties
     init() {
     }
     */
    
    // 析构函数
    deinit {
        name = "";
        address = "";
    }
}

var tea = Tea("Red Tea","Huang Shan");
print(tea.name);
print(tea.address);

/*
 When no init() function, will have 2 error:
 
 error: missing argument for parameter #1 in call
 var tea2 = Tea();
 ^
 String
 
 note: 'init(_:_:)' declared here
 init(_ name:String, _ address:String) {
 ^
 */
var tea2 = Tea();
print(tea2.name);
print(tea2.address);
