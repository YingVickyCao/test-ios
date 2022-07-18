var char = "A"

let string = "abc"

var str = "ABC";
var str2:String = "ABC";

// 初始化
//var str3:String="";
//  error: '=' must have consistent whitespace on both sides
//          var str3:String ="";
var str3:String = "";
var str4 = String();

// 拼接
var str5:String = "F";
var str6 = str2 + str5;

// Char -> String
var c1:Character = "A";
// error: binary operator '+' cannot be applied to operands of type 'Character' an 'String'
//var str7 = c1 + str2;
var str7 = String(c1) + str2;
var str8 = "\(c1)" + str2;

// Loop item of String
for item in str2 {
    print(item)
}
