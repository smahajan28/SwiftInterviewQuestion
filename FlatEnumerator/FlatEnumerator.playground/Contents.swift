//: Playground - noun: a place where people can play

import UIKit

class FlatEnumerator {
    let originalList: Array<Any>!
    private var flatList: Array<Int> = []
    var currentIndex = 0
    
    init(list: Array<Any>) {
        self.originalList = list
        self.flatList = flatenList()
    }
    
    func nextObject() -> Int {
        let int = flatList[currentIndex]
        currentIndex += 1
        return int
    }
    
    func objectAt(index: Int) -> Int {
        return flatList[index]
    }
    
    func nextObjectAtIndex(list: Any, index: Int) {
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
    
    func flatenList() -> [Int] {
        for item in originalList {
            self.nextObjectAtIndex(list: item, index: 0)
        }
        
        return flatList
    }
}

do {
    
    var arr: [Any] =  [
                            1 as Any,
                            [2,3] as Any,
                            [4, [5, [6,7,8]]] as Any,
                            [9,[10,11],12] as Any,
                            [13,14,[15,16]] as Any
                        ]
    let enumerator = FlatEnumerator(list: arr)
    
    let allObjects = enumerator.allObjects()
    let nextObject = enumerator.nextObject()
    let nextObject2 = enumerator.nextObject()
    let nextObject3 = enumerator.nextObject()
    let nextObject4 = enumerator.nextObject()
    
    let output = enumerator.objectAt(index: 3)
}
