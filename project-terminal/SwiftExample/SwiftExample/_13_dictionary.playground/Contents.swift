import Cocoa

// Dictionary
var dict = ["k1":1,"k2":2];

// 1 define type
var dict2: [String:Int] = ["k1":1,"k2":2];

/**
 error: cannot convert value of type 'String' to expected dictionary value type 'Int'
 var dict3: [String:Int] = ["k1":1,"k2":"2"];
 ^~~
 **/
// used type must =  define type
//var dict3: [String:Int] = ["k1":1,"k2":"2"];

// 2  get value
dict["k1"]  // 1

// 3 count
dict.count;     //  2
dict.capacity;  //  3

// 4 Change value
dict["k1"] = 11; // 1 -> 11
dict["k1"]      // 11

// 5 keys
// 输入内容：无序
// k1, k2
// k2, k1
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
dict.removeValue(forKey: "k2");
dict;  // "k1": 11]
