//: [Previous](@previous)

import Foundation

//: [Next](@next)

/**
函数 - 函数文档注释
 */

/// 求和 【概述】
///
///  讲2个两个整数相加 【更详细的描述】
///
/// - Parameter v1:第1个整数
/// - Parameter v2:第2个整数
/// - Returns:2个整数的和
///
/// - Note: 传入2个整数即可【技巧】
///
func sum(v1:Int, v2:Int) -> Int{
    v1 + v2;
    // 等价于
    //    return v1 + v2;
}

sum(v1: 1, v2: 20) // Alt 键查看注释

// 参考 ： https://www.swift.org/documentation/api-design-guidelines/
