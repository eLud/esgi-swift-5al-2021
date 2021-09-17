func multiply(_ firstNumber: Int, by secondNumber: Int) -> Int {
    return firstNumber * secondNumber
}

let result = multiply(10, by: 3)
result

func display(teamName: String, score: Int = 0, opponent: String = "") {
  print("1 : \(teamName): \(score)")
}

func display(teamName: String, score: Int) {
  print("2 : \(teamName): \(score)")
}

func display(teamName: String, score: Double) {
    print("3 : \(teamName): \(score)")
  }

func display(teamName: String, result: Double) {
    print("3 : \(teamName): \(result)")
  }

display(teamName: "", score: 9)
display(teamName: "", score: 9.4)
display(teamName: "", score: 9, opponent: "op")

struct Temperature {
  var celsius: Double

  init(celsius: Double) {
    self.celsius = celsius
  }

  init(fahrenheit: Double) {
    celsius = (fahrenheit - 32) / 1.8
  }
}

let currentTemp = Temperature(celsius: 30.0)
