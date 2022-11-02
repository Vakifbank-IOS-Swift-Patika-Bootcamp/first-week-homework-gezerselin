import Foundation

var word : String = "nalan"

//call function
isPalindrome(word : word)

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
    print("Yey! You write palindrome word ")
    return true
}




