// Playground - noun: a place where people can play

import Cocoa

func characterSplit(text: String) -> String[] {
    var stringArray = String[]()
    var counter = 0
    for character in text {
        stringArray[counter] = character
        counter++
    }
    return stringArray
}

var testString = "###############"
let testArray = testString.componentsSeparatedByString<#separator: String#>)


