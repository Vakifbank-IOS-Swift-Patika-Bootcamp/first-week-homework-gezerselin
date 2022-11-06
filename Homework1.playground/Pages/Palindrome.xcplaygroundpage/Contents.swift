import Foundation

var word = "Sir I demand I am a maid .!? na:med Iris"//"Socorram-me subi no onibus em marrocos"//"taco cat taco cat"//

let arr : [String] = [".",",",":","!","?"," "]
for i in arr {
    word = word.replacingOccurrences(of: i , with: "")
}
isPalindrome(word : word.lowercased())

func isPalindrome(word: String) -> Bool {
    let idx = word.count/2
    for ind in 0..<idx{
    
        let startIndex = word.index(word.startIndex, offsetBy: ind)
        let endIndex = word.index(word.endIndex, offsetBy: -ind - 1)

        if word[startIndex] != word[endIndex] {
            print("Sorry! It is not palindrome")
            return false
        }
    }
    print("Yey! You wrote palindrome word ")
    return true
}




