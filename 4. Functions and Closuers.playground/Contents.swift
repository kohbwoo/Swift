//기본 함수형
//func 함수명(매개변수: 변수형태, ~~~) -> 반환값{함수내용}
//함수명(함수인자: 인자내용, ~~~)
func greet(preson: String, day: String) -> String{
    return "Hello \(preson), today is \(day)."
}
print(greet(preson: "Byungwoo", day: "Tuesday"))


//매개변수 앞에 _가 있는경우 함수 인자읜 지정이 없이 인자 요소만으로 순서대로 전달됨
func greet(_ preson: String, _ day: String) -> String{
    return "Hello \(preson), today is \(day)."
}
print(greet("Byungwoo", "Tuesday"))


func calculateStatistics(scores: [Int]) ->(min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}

//17번재 줄이 "scores:"가 아닌 "_ scores:" 였다면 아래 행의 튜플 이름 없이 요소만으로 실행 가능
print(calculateStatistics(scores: [5,3,100,3,9]))



//함수 중첩 가능
func returnFifteen() -> Int{
    var y = 10
    func add(){
        y += 5
    }
    add()
    return y
}
print(returnFifteen())

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int{
        print("number: \(number)")
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
print(increment(7))


//numbers 중 lessThanTen 조건을 만족하는 요소가 있는지 판단하는 함수
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool
{
    print("list \(list)")
    for item in list {
        print("item\(item), list\(list)")
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool{
    return number < 10
}

var numbers = [20,19,7,12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))


numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let sortedNumbers = numbers.sorted{ $0 > $1 }

print(sortedNumbers)
