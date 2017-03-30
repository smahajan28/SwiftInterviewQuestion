//: Playground - noun: a place where people can play

import UIKit


var givenNumbers = [54,548,60,546]

func printLargestNumber(input : [Int]) -> String {
    let numberInStringFormat = input.map {
        return "\($0)"
    }
    
    let result = numberInStringFormat.sorted { (str1, str2) -> Bool in
        return str1.appending(str2) > str2.appending(str1)
    }
    
    return result.joined()
}

var result = printLargestNumber(input: givenNumbers)
