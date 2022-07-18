import Foundation

// Dictionary
var dict = ["age":1,"height":2];

// define type
// 字典[param1: param2]用于表示字典类型，param1为键类型，param2为值类型
var dict2 : [String:Int] = ["age":1,"height":2];
var dict3 : [String:Int]; // 创建空的字典

// 2  get value
dict["age"]  // 1

// 3 count
dict.count;     //  2
dict.capacity;  //  3

// 4 Change value
dict["age"] = 11; // 1 -> 11
dict["age"]      // 11

// 5 keys
// 输入内容：无序
// age, height
// height, age
for k in dict.keys {
    print(k)
}

// 6 values
// 输入内容：无序
// 11,2
// 2,11
for v in dict.values {
    print(v);
}

// 7 remove
dict.removeValue(forKey: "height");
dict;  // "age": 11]
