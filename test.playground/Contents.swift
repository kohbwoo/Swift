import UIKit
var CO2: Double = 0.0
var dust: Double = 0.0
var humidity: Double = 0.0
var id: Int = 0
var temperature: Double = 0.0
var time: String = ""

// json에 딕셔너리 형태로 저장
func callREST1() {
        do {
            if let url = URL(string: "http://mirsv.com:5000/get") {
                var request = URLRequest.init(url: url)

                request.httpMethod = "GET"

                URLSession.shared.dataTask(with: request) { (data, response, error) in
                    guard let data = data else { return }

                    // data
                    if let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String : Any] {
                        CO2 = json["CO2"]! as! Double
                        dust = json["dust"]! as! Double
                        humidity = json["humidity"]! as! Double
                        id = json["id"]! as! Int
                        temperature = json["temperature"]! as! Double
                        time = json["time"] as! String
                        print(CO2)
                    }
                    print(CO2)
                }.resume()
//                print(CO2)//여기부터 안나오네...
            }
        }
    }
callREST1()
