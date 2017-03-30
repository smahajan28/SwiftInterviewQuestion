//
//  SpiralArray.swift
//  
//
//  Created by Sahil Mahajan on 30/03/17.
//
//

import Foundation


 ///    Question  : Print a given matrix in spiral form

 ///    Given a 2D array, print it in spiral form. See the following examples.
 ///    var arr: [[Int]] =  [
 ///                            [1,2,3,4],
 ///                            [5,6,7,8],
 ///                            [9,10,11,12],
 ///                            [13,14,15,16]
 ///                        ]
 ///
 ///    Output : 1,2,3,4,8,12,16,20,19,18,17,13,9,5,6,7,11,15,14,10
 ///
 ///

var arr: [[Int]] =  [
    [1,2,3,4],
    [5,6,7,8],
    [9,10,11,12],
    [13,14,15,16]]


func printSpiralofMatrix(arr: [[Int]]) {
    var rows = arr.count
    var cols = arr[0].count
    
    var currentColumn = 0
    var currentRow = 0
    var steps = 0
    
    for row in 0..<rows {
        if steps == arr.count * arr[0].count { break }
        while currentColumn < cols-1 {
            print(arr[currentRow][currentColumn])
            currentColumn += 1
            steps += 1
        }
        
        while currentRow < rows-1 {
            print(arr[currentRow][currentColumn])
            currentRow += 1
            steps += 1
        }
        
        // currentColumn = cols - 1 and row == rows - 1
        while currentColumn > row {
            print(arr[currentRow][currentColumn])
            currentColumn -= 1
            steps += 1
        }
        
        while currentRow > row {
            print(arr[currentRow][currentColumn])
            currentRow -= 1
            steps += 1
        }
        
        currentRow += 1
        currentColumn += 1
        rows -= 1
        cols -= 1
    }
}

