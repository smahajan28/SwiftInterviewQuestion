//: Playground - noun: a place where people can play

import UIKit

func quickSort(array: inout Array<Int>, startIndex: Int, endIndex: Int) {
    if startIndex < endIndex {
        let pivotIndex = getPivotIndex(array: &array, startIndex: startIndex, endIndex: endIndex)
        quickSort(array: &array, startIndex: startIndex, endIndex: pivotIndex-1)
        quickSort(array: &array, startIndex: pivotIndex+1, endIndex: endIndex)
    }
}

func getPivotIndex(array: inout Array<Int>, startIndex: Int, endIndex: Int) -> Int {
    var exchangeIndex = startIndex-1
    var pivotElement = array[endIndex]
    for i in startIndex..<endIndex {
        if array[i] <= pivotElement {
            exchangeIndex += 1
            if exchangeIndex != i {
                swapInt(firstNum: &array[exchangeIndex], secondNum: &array[i])
            }
        }
    }
    if exchangeIndex+1 != endIndex {
        swapInt(firstNum: &array[exchangeIndex+1], secondNum: &array[endIndex])
    }
    return exchangeIndex+1
}

func swapInt( firstNum: inout Int, secondNum: inout Int) {
    let temp = firstNum
    firstNum = secondNum
    secondNum = temp
}


var array = [8,3,4,6,1,9,7,2,5]

quickSort(array: &array, startIndex: 0, endIndex: array.count-1)
