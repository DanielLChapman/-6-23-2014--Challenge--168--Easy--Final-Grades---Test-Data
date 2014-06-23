// Playground - noun: a place where people can play

import Cocoa

let n = 10
let names:UInt32 = 26
var letterMap = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
var xMap = Int(n)
var yMap = Int(n)
var namesArray = Array<Array<String>>()
for column in 0..yMap {
    namesArray.append(Array(count:xMap, repeatedValue:String()))
}

func compareArray(array:Array<Array<String>>, firstName: String, lastName: String) ->( boolR: Bool) {
    var arrayS = array, f = firstName, l = lastName, boolR = true
    for var counter = 0; counter < arrayS.count; counter++ {
        if arrayS[counter][0] == f && arrayS[counter][1] == l {
            boolR = false
        }
    }
    return (boolR)
}

func createName() ->  (aname: String) {
    var aname: String = ""
    var r = Int(arc4random_uniform(8) + 1)
    for var i = 0; i < r; i++ {
        var q = Int(arc4random_uniform(26) + 1)
        aname += letterMap[q]
    }
    return aname
}

for (var i = 0; i < n; i++ ){
    var firstName = createName()
    var lastName = createName()
    while !compareArray(namesArray, firstName, lastName).boolR {
        var firstName = createName()
        var lastName = createName()
    }
    var first = String(Int(arc4random_uniform(100) + 1)), second = String(Int(arc4random_uniform(100) + 1)), third = String(Int(arc4random_uniform(100) + 1)), fourth = String(Int(arc4random_uniform(100) + 1)), fifth = String(Int(arc4random_uniform(100) + 1))
    var arrayAppend = [firstName, lastName, first, second, third, fourth, fifth]
    namesArray[i] = arrayAppend
    
}

namesArray
