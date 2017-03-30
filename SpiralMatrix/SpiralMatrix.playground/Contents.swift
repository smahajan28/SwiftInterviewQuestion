//: Playground - noun: a place where people can play

import UIKit


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

var arr: [[Int]] =  [
    [1,2,3,4],
    [5,6,7,8],
    [9,10,11,12],
    [13,14,15,16],
    [17,18,19,20]
]

printSpiralofMatrix(arr: arr)