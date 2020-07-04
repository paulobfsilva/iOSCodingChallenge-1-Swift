import UIKit

var str = "Hello, playground"
//Write a function that has one String argument and returns a boolean; true if the string has only unique letters (case sensitive); false otherwise

// "Hello, world" -> false "lll"

// easy, direct, explicit way

func checkMoreThanOneRepeatedChar (inputString: String) -> Bool {
    var lettersUsed = [Character]()
    
    for letter in inputString {
        if lettersUsed.contains(letter) {
            return false
        }
        
        lettersUsed.append(letter)
    }
    return true
}


checkMoreThanOneRepeatedChar(inputString: str)


//however, does this solution scale?? O(n)

func checkMoreThanOneRepeatedChar2 (inputString: String) -> Bool {
    return Set(inputString).count == inputString.count
}

checkMoreThanOneRepeatedChar2(inputString: "12345")

