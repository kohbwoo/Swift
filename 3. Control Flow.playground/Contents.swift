let individualScores = [75,42,103,87,12]

var teamScore = 0

for score in individualScores{
    if score > 50{
        teamScore += 3
    }else{
        teamScore += 1
    }
    print("score: \(score) teamScore: \(teamScore)")
}

print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)


var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName{//여긴 뭘까
    greeting = "Hello, \(name)"
}
print(greeting)


let nickName: String? = nil
let fullName: String = "John Appleseed"
//??연산자: 두개중 하나가 값이 nil인 경우 값이 있는 요소를 반환
let infomalGreeting = "Hi \(nickName ?? fullName)"
print(nickName)
print(fullName)
print(infomalGreeting)


//switch-case문은 default가 없는경우 오류가 발생한다.
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("I hate celery")
case "cucumber", "broccoli":
    print("I abominate that")
case let x where x.hasSuffix("pepper"):
    print("Is is a spicy \(x)?")
default:
    print("Not bad")
}

let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "Square": [1,4,9,16,25],
]
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            
        }
        print("numbers: \(numbers), number: \(number), largest: \(largest)")
    }
}
print("largest: \(largest)")

var n = 2
while n < 100{
    print("n: \(n)")
    n *= 2
}
print("while end n: \(n)")

var m = 2
repeat {
    print("m: \(m)")
    m *= 2
} while m < 100
print("repeat end m: \(m)")

var total = 0
//A...B: A부터B까지, A..<B: A부터 B-1까지
for i in 0..<4 {
    print("total: \(total) i: \(i)")
    total += i
}
print(total)
