import Foundation

// Array

var array = [1,2];

// 1 Define type
var array2: [Int] = [3,4];

// 2 Change the value
array[0] = 10;
array;

// 3 Size
array.count;
array.capacity;

// 4 Added to end
array.append(3);

// 5 insert
array.insert(4, at: 1); // [10, 2, 3] -> [10, 4, 2, 3]

// 6 loop item
for item in array {
    print(item);
}
