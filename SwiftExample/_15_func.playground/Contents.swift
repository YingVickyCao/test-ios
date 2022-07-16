// Fuction

// 1 return value
// no return value
//func hi(){
func hi()-> Void{
    print("hi, this is the simplest function")
}
hi();

// Has return value
func hi2()->String{
    return "China";
}

hi2();

// has multiple value
func hi3() ->(name:String , no:Int){
    return ("Tom",1);
}
hi3();


// 2 参数
// 无参数: see hi()

// 1个参数:
func hello(name:String){
    print(name)
}
hello(name: "abc");

// 多个函数
func hello2(name:String, no:Int){
    print(name)
    print(no)
}

hello2(name:"abc",no:1000);
// _ ： 代表函数调用时，可以省略参数名称
func hello3(_ name:String, _ no:Int){
    print(name)
    print(no)
}
hello3("abc",1000);

// 外部参数
func setName(name:String){
    // error: cannot assign to value: 'name' is a 'let' constant
    //    name = "123"
}
var name = "Name1";
setName(name: name);    // Name1
name;


func setName2(name:inout String){
    name = "456"
}
var name2 = "Name2";
// error: passing value of type 'String' to an inout parameter requires explicit '&'
//setName2(name: name2);
setName2(name: &name2);    // Name2 -> 456
name2;  // 456

// 可变参数
func transNums(nums:Int...){
    for num in nums {
        print(num)
    }
}
transNums(nums: 1)  //  1
transNums(nums: 2,3)// 2,3

func transNums2(_ nums:Int...){
    for num in nums {
        print(num)
    }
}
transNums2(1);     //  1
transNums2(2,3)    // 2,3

// 默认参数
func some(param1:Int, param2:Int = 12){
    print("param1=\(param1),param2=\(param2)");
}
some(param1:99);    // 99,12
some(param1:10, param2:20)  // 10,20


// 3 函数类型
// (Int, Int)-> Int
func sum(n1:Int, n2:Int)->Int{
    return n1 + n2;
}

func minus(n1:Int, n2:Int)->Int{
    return n1 - n2;
}

// 函数类型作为变量
// sum： 表示返回函数类型 (Int, Int)-> Int
// sum():表示调用
var calucator1 = sum;
print(calucator1(1,2));

var calucator2 : (Int,Int)->Int = sum;
print(calucator2(1,2));

// 函数类型作为参数
func mathFunc(_ add:(Int,Int)->Int, _ data1:Int, _ data2:Int)->Int{
    return add(data1, data2);
}
var result = mathFunc(sum, 3, 5);
print(result); // 8

var result2 = mathFunc(calucator1, 3, 5);
print(result2); // 8

var result3 = mathFunc(minus, 3, 5);
print(result3); // -2

// 函数类型作为返回值
func backword(_ value:Int)->Int{
    return value - 1;
}

func forward(_ value:Int)->Int{
    return value + 1;
}
func step(_ flag:Bool) -> (Int)->Int{
    if flag {
        return forward;
    }
    else{
        return backword;
    }
}

var choose = step(true);
var v1 = choose(99);
print(v1);  //  100

// 4 嵌套函数
func step2(_ flag:Bool) -> (Int)->Int{
    func backword(_ value:Int)->Int{
        return value - 1;
    }
    
    func forward(_ value:Int)->Int{
        return value + 1;
    }
    
    if flag {
        return forward;
    }
    else{
        return backword;
    }
}


var chooseFunction = step2(false);
var v2 = chooseFunction(50);
print(v2);  // 49
