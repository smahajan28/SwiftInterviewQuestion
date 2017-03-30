//
//  CountArray.swift
//  
//
//  Created by Sahil Mahajan on 31/03/17.
//
//

import Foundation

///
///     Question: Sort elements in O(n) time.
///
///     Given an array like [5,1,3,1,2,3,2,2,4,6,8,2,1,4,3,2,4,6]
///     Sort the given array using best approach.
///     Input : [5, 1, 3, 1, 2, 3, 2, 2, 4, 6, 8, 2, 1, 4, 3, 2, 4, 6]
///     Output : [1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 6, 6, 8]
///
///

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
