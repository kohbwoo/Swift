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


