import Foundation

// 1 ClosedRange
// [1,5]
let range_1 = 1...5;   // 自动识别为 ClosedRange<Int>, 是范型
//let range_1: ClosedRange<Int> = 1...5;

// 2 Range
// [1,5 )
//let range_2 = 1..<3   // 自动识别为 Range<Int>
let range_2:Range<Int> = 1..<3

// 没有(1,3]
//let range_3 = 1>..3;  // error: '>' is not a postfix unary operator

// 3 PartialRangeThrough
// [负无穷小, 5]
//let range_4 = ..5     // 自动识别为 PartialRangeThrough<Int>
let range_4:PartialRangeThrough<Int> = ...5
range_4.contains(5);      // true
range_4.contains(6);      // false
range_4.contains(7);      // false
range_4.contains(-3);     // true
range_4.contains(-188988);// true

// 4 字符、字符串也能使用区间运算符，但默认不能用在for-in中。但可以单独拿出来用
let string_range_1 = "cc"..."de"
string_range_1.contains("cb") // false
string_range_1.contains("da") // true
string_range_1.contains("fg") // false

let string_range_2 = "a"..."f"
string_range_2.contains("d"); // true
string_range_2.contains("g"); // false

// [\0,~] 包含了经常使用的字符
let chart_range:ClosedRange<Character> = "\0"..."~"
chart_range.contains("G")

// 5 removeSubrange in Array
//let measurements = [1,1.5,3.0,5.9]
//measurements.removeSubrange(1..<2) // error: cannot use mutating member on immutable value: 'measurements' is a 'let' constant

var measurements = [1,1.5,3.0,5.9]
measurements.removeSubrange(1..<2) // [1, 3, 5.9]

var languages = ["swift","english","Java","C"]
languages.removeSubrange(1...2)  // ["swift", "C"]

// 6 字符串使用区间运算符
var welcome = "hello world"
welcome.count          // 11  => endIndex=10
welcome.endIndex

//let range = welcome.index(welcome.endIndex, offsetBy: -3)...welcome.endIndex
/*
 Fatal error: String index is out of bounds
 error: Execution was interrupted, reason: EXC_BAD_INSTRUCTION (code=EXC_I386_INVOP, subcode=0x0).
 */
//welcome.removeSubrange(range)


let range = welcome.index(welcome.endIndex, offsetBy: -3)..<welcome.endIndex
welcome.removeSubrange(range) // "hello wo"
