import Foundation

// 继承
//final class Tv {
class Tv {
//    final var name:String = "";
    var name:String = "";
    init(_ name:String) {
        self.name = name;
    }
    
    deinit {
        self.name = "";
    }
    
//   final  func getKey() -> Int {
    func getKey() -> Int {
        return 10;
    }
}

class GoogleTv:Tv {
    // 4 重载构造函数
    override init(_ name: String) {
        super.init(name); // 不会主动调用，根据需要决定是否手动调用，
        self.name = self.name + " - ABC";
    }
    
    // 5 重载属性的Getters和Setters
    override var name:String{
        get {
            return super.name;
        }
        
        set {
            super.name = super.name + " - 123"
        }
    }
    
    // 6 重载方法
    override func getKey() -> Int {
        return 20;
    }
    
    // 重载函数 = 函数名称、参数列表、返回值相同。如果只是返回类型不同，那么编译报错。
    // 7 新函数，不是重载函数
    func getKey(_ value:Int) -> Int {
        return value * 2;
    }
    
    // 7 新函数，不是重载函数
    func getKey(_ value:String) -> String {
        return value + " 123";
    }
    
    // note: found this candidate
//    func getKey() -> String {
//        return " abc";
//    }
}
// 1 继承了构造函数
var childTv = GoogleTv("Google Tv");

// 2 继承了方法
print(childTv.getKey())

// 3 继承了属性
print(childTv.name)

childTv.name = "school"
print(childTv.name)

print(childTv.getKey());

print(childTv.getKey(20));
print(childTv.getKey("China"));

//print(childTv.getKey()); // note: found this candidate
