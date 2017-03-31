//
//  MergeSort.swift
//  
//
//  Created by Sahil Mahajan on 31/03/17.
//
//

import Foundation

func mergeSort(array: inout [Int], startIndex: Int, endIndex: Int) {
    if startIndex < endIndex {
        let midIndex = (startIndex + endIndex)/2
        mergeSort(&array, startIndex: startIndex, endIndex: midIndex)
        mergeSort(&array, startIndex: midIndex+1, endIndex: endIndex)
        merge(&array, startIndex: startIndex, midIndex: midIndex, endIndex: endIndex)
    }
}

func merge(array: inout [Int], startIndex: Int, midIndex: Int, endIndex: Int) {
    let firstArrayCount = midIndex - startIndex + 1
    let secondArrayCount = endIndex - midIndex
    
    var firstArray = [Int]()
    var secondArray = [Int]()
    
    for i in 0..<firstArrayCount {
        firstArray.append(array[startIndex+i])
    }
    
    for  i in 0..<secondArrayCount {
        secondArray.append(array[midIndex+1+i])
    }
    
    firstArray.append(Int.max)
    secondArray.append(Int.max)
    
    var i = 0, j = 0
    for k in startIndex...endIndex {
        if firstArray[i] <= secondArray[j] {
            array[k] = firstArray[i]
            i += 1
        }
        else {
            array[k] = secondArray[j]
            j += 1
        }
    }
}
