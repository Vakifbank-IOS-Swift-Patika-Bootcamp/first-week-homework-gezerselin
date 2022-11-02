
import Foundation

var array :[AnyHashable] = ["ab","cd","ef","cd",1,"cd",3,1,1,1,1,1,"cd","ab","",""]

struct arraysInfo{
    let element : AnyHashable
    var counts : Int
}
var listOfArray : [arraysInfo] = []

//call function
var arr = getArrayInfo(array: array)

//print elements & count of elements
for elm in arr {
    print("element: \(elm.element) count: \(elm.counts)")
}

func getArrayInfo(array : [AnyHashable]) -> [arraysInfo]{
    
    for elm in array {

        if listOfArray.contains(where: {$0.element == elm}) == true  {
            let index = listOfArray.firstIndex(where: { $0.element == elm}) ?? 0
            listOfArray[index].counts += 1
        }
        else{
            let newElement = arraysInfo(element: elm, counts: 1)
            listOfArray.append(newElement)
        }
    }
    return listOfArray
}

