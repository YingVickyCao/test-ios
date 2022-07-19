import Foundation

// 1 IF

var score = 5;
if(score > 90){
    print("优秀")
}else if (score >= 60){
    print("及格")
}
else{
    print("不及格")
}


 // 特殊：If 后面的条件，可以省略小括号, 条件后面的大括号不可以省略
if score  > 90 {
    print("优秀")
}else if score >= 60 {
    print("及格")
}
else{
    print("不及格")
}

// 特殊：If 条件只能是bool 类型
// 其他语言：If条件可以是int类型
//if 3{ // error : Type 'Int' cannot be used as a boolean; test for '!= 0' instead
//
//}

