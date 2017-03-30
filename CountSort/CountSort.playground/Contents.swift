//: Playground - noun: a place where people can play

import UIKit

func countSort(input: [Int]) -> [Int] {
    var outputArray = [Int](repeatElement(0, count: array.count))
    var countArray = [Int](repeatElement(0, count: array.max()!+1))
    
    for i in array {
        countArray[i] += 1
    }
    
    for i in 1..<countArray.count {
        countArray[i] += countArray[i-1]
    }
    
    for i in array {
        outputArray[countArray[i] - 1] = i
        countArray[i] -= 1
    }
    
    return outputArray
}

let array = [5,1,3,1,2,3,2,2,4,6,8,2,1,4,3,2,4,6]
let sortedArray = countSort(input: array)