//
//  FlatEnumerator.swift
//  
//
//  Created by Sahil Mahajan on 31/03/17.
//
//

import Foundation

///    Question  : Create a custom enumerator which always return next object of parent
///     array.

///    Given a array which may contain integer or array of integers or nested array of
///    integers. Create a custom enumerator that will create a flat array and
///    on calling nextObject method, always return an integer instead of an array.
///    Note: Please maintian the index too


///    var arr: [[Int]] =  [
///                            1,
///                            [2,3],
///                            [4, [5, [6,7,8]]],
///                            [9,[10,11],12],
///                            [13,14,[15,16]]
///                        ]
///
///    Output :
///
///             allboject() : 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16
///
///             nextObject() : 1
///             nextObject() : 2
///             nextObject() : 3
///             nextObject() : 4
///
///             objectAt(index: 5) : 6
///



class FlatEnumerator {
    let originalList: Array<Any>!
    private var flatList: Array<Int> = []
    var currentIndex = 0
    
    init(list: Array<Any>) {
        self.originalList = list
        self.flatList = flatenList()
    }
    
    func objectAt(index: Int) -> Int {
        return flatList[index]
    }

    func nextObject() -> Int {
        let int = flatList[currentIndex]
        currentIndex += 1
        return int
    }
    
    private func nextObjectAtIndex(list: Any, index: Int) {
        var item = 0
        if list is Array<Any> {
            let obj = list as! Array<Any>
            for (i,v) in obj.enumerated() {
                nextObjectAtIndex(list: v, index: i)
            }
        }
        
        if list is Int{
            item = list as! Int
            flatList.append(item)
        }
    }
    
    func allObjects() -> [Int]{
        return flatList
    }
    
    private func flatenList() -> [Int] {
        for item in originalList {
            self.nextObjectAtIndex(list: item, index: 0)
        }
        
        return flatList
    }
}

