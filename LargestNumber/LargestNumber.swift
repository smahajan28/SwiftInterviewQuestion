//
//  LargestNumber.swift
//  
//
//  Created by Sahil Mahajan on 31/03/17.
//
//

import Foundation


///     Question : Arrange given numbers to form the biggest number
///
///     Given a list of non negative integers, arrange them in such a manner that they form the largest number possible.
///     The result is going to be very large, hence return the result in the form of a string.
///
///     For example: Given numbers are [64, 646, 648, 70],
///                  Output : 7064864664
///                 
///                  Given numbers are [1, 34, 3, 98, 9, 76, 45, 4] 
///                  Output : 998764543431
///
///


func printLargestNumber(input : [Int]) -> String {
    let numberInStringFormat = input.map {
        return "\($0)"
    }
    
    let result = numberInStringFormat.sorted { (str1, str2) -> Bool in
        return str1.appending(str2) > str2.appending(str1)
    }
    
    return result.joined()
}



