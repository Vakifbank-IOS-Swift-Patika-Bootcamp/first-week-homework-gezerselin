import Foundation


var arr : [Int] = []

var sum = 2

var i = 1
var j = 2
var next = 0

while (i < 4000000){
    next = i + j
    i=j
    j=next
    if next % 2 == 0{
        sum = sum + next
    }
}

print(sum)
