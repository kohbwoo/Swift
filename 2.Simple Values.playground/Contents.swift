import UIKit
//var = 변수 let = 상수
var myVariable = 42
print(myVariable)

myVariable = 50
print(myVariable)

let myConstant = 42
print(myConstant)

let implicitInteger = 70
print(implicitInteger)

let implicitDouble = 70.0
print(implicitDouble)

let explicitDouble: Double = 70
print(explicitDouble)

let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)


//문자열 중간 변수, 상수 출력시 \(변수)
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummart = "I have \(apples + oranges) price of fruit."
print(fruitSummart)

//여러줄을 차지하는 문장의 경우 """ 사용
let quotation = """
I said "I have \(apples) apples." And then I said "I have \(apples+oranges)pricesof fruit."
"""
print(quotation)

//배열
var shoppingList = ["Apple", "Orange", "Water"]
print(shoppingList)
print(shoppingList[0],shoppingList[1],shoppingList[2])

//배열의 요소 변경
shoppingList[1] = "tulips"
print(shoppingList)
print(shoppingList[0],shoppingList[1],shoppingList[2])

//배열 요소 추가
shoppingList.append("blue paint")
print(shoppingList)

//딕셔너리
var occupations = ["Malcolm": "Captiaon",
                   "Kaylee": "Mechanic",]
print(occupations)

//딕셔너리 요소 추가
occupations["Jayne"] = "Public Relations"
print(occupations)

//빈배열, 딕셔너리 생성
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]
print(emptyArray)
print(emptyDictionary)

