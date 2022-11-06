
import Foundation

var number = 600851475143

var max = -1
while number % 2 == 0 {
    max = 2
    number = number/2
}
for i in stride(from: 3, to: Int(sqrt(Double(number))), by: 2){
    while number % i == 0 {
        max = i
        number = number / i
    }
}
if number > 2 {
    max = number
}

print(max)
