import Foundation

var i : Int = 1
var arr : [Int] = []

while i<1000 {
    if i % 3 == 0 {
        arr.append(i)
    }
    else if i % 5 == 0{
        arr.append(i)
    }
    i += 1
}
//print(arr)
var sum = 0
for i in arr{
    sum += i
}
print(sum)
