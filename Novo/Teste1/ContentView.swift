////
////  ContentView.swift
////  Novo
////
////  Created by Tarik Villalobos on 10/02/23.
////
//
//
//import SwiftUI
//
//struct ContentView: View {
//    private let operations: [String: (Double, Double) -> Double] = [
//        "+": (+),
//        "-": (-),
//        "×": (*),
//        "÷": (/),
//    ]
//
//    @State private var equation: String = ""
//    @State private var firstOperand: Double?
//    @State private var operation: String?
//    @State private var equation: String
//    @State private var result: String = ""
//
//    private func append(number: String) {
//        equation += number
//        if let value = Double(equation) {
//            firstOperand = value
//        }
//    }
//
//    private func reset() {
//        equation = ""
//        firstOperand = nil
//        operation = nil
//    }
//
//    private func performOperation() {
//        if let firstOperand = firstOperand, let operation = operation, let result = operations[operation]?(firstOperand, Double(equation)!) {
//            equation = String(result)
//        }
//    }
//
//    private func calculate() {
//        if let result = evaluate(equation: equation) {
//            self.result = result
//        }
//    }
//
//    private func evaluate(equation: String) -> Double? {
//        let expression = NSExpression(format: equation)
//        return expression.expressionValue(with: nil, context: nil) as? Double
//    }
//
//
//
//
//    var body: some View {
//        VStack(spacing: 12) {
//            HStack {
//                Spacer()
//                Text(equation)
//                    .font(.system(size: 40))
//                    .foregroundColor(.white)
//            }.padding()
//
//            HStack(spacing: 12) {
//                CalculatorButton(title: "AC", backgroundColor: Color.red, action: reset, width: 64)
//                CalculatorButton(title: "+/-", backgroundColor: Color.gray, action: { self.equation = String(Double(self.equation)! * -1) }, width: 64)
//                CalculatorButton(title: "%", backgroundColor: Color.gray, action: { self.equation = String(Double(self.equation)! / 100) }, width: 64)
//                CalculatorButton(title: "÷", backgroundColor: Color.orange, action: { self.operation = "÷"; self.equation = "" }, width: 64)
//            }
//
//            HStack(spacing: 12) {
//                CalculatorButton(title: "7", backgroundColor: Color.gray, action: { self.append(number: "7") }, width: 64)
//                CalculatorButton(title: "8", backgroundColor: Color.gray, action: { self.append(number: "8") }, width: 64)
//                CalculatorButton(title: "9", backgroundColor: Color.gray, action: { self.append(number: "9") }, width: 64)
//                CalculatorButton(title: "×", backgroundColor: Color.orange, action: { self.operation = "×"; self.equation = "" }, width: 64)
//            }
//
//            HStack(spacing: 12) {
//                CalculatorButton(title: "4", backgroundColor: Color.gray, action: { self.append(number: "4") }, width: 64)
//                CalculatorButton(title: "5", backgroundColor: Color.gray, action: { self.append(number: "5") }, width: 64)
//                CalculatorButton(title: "6", backgroundColor: Color.gray, action: { self.append(number: "6") }, width: 64)
//                CalculatorButton(title: "-", backgroundColor: Color.orange, action: { self.equation += " - " }, width: 64)
//            }
//            HStack(spacing: 12) {
//                CalculatorButton(title: "1", backgroundColor: Color.gray, action: { self.append(number: "1") }, width: 64)
//                CalculatorButton(title: "2", backgroundColor: Color.gray, action: { self.append(number: "2") }, width: 64)
//                CalculatorButton(title: "3", backgroundColor: Color.gray, action: { self.append(number: "3") }, width: 64)
//                CalculatorButton(title: "+", backgroundColor: Color.orange, action: { self.equation += " + " }, width: 64)
//            }
//            HStack(spacing: 12) {
//                CalculatorButton(title: "0", backgroundColor: Color.gray, action: { self.append(number: "0") }, width: 64)
//                CalculatorButton(title: ".", backgroundColor: Color.gray, action: { self.equation += "." }, width: 64)
//                CalculatorButton(title: "=", backgroundColor: Color.orange, action: { self.calculate() }, width: 64)
//                CalculatorButton(title: "x", backgroundColor: Color.orange, action: { self.equation += " * " }, width: 64)
//            }
//        }
//    }
//}
//
//
//
//
//
//
//
//
//
//
//
//
//struct CalculatorButton: View {
//    let title: String
//    let backgroundColor: Color
//    let action: () -> Void
//    let width: CGFloat
//
//    var body: some View {
//        Button(action: action) {
//            Text(title)
//                .font(.system(size: 32))
//                .foregroundColor(.white)
//                .frame(width: width, height: width * 0.75)
//                .background(backgroundColor)
//                .cornerRadius(width / 2)
//        }
//    }
//}
//
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
////import SwiftUI
////
////
////struct ContentView: View {
////    var body: some View {
////        Text("oii")
////    }
////}
////
////
////
////struct ContentView_Previews: PreviewProvider {
////    static var previews: some View {
////        ContentView()
////    }
////}
//
////import SwiftUI
////
////struct ContentView: View {
////
////    @State private var firstNumber = ""
////    @State private var secondNumber = ""
////    @State private var operatorSign = ""
////    @State private var result = ""
////
////    var body: some View {
////        VStack(spacing: 20) {
////            Text("Result: \(result)")
////                .font(.largeTitle)
////
////            HStack(spacing: 20) {
////                TextField("Enter a number", text: $firstNumber)
////                    .keyboardType(.numberPad)
////
////                TextField("Enter another number", text: $secondNumber)
////                    .keyboardType(.numberPad)
////            }
////
////            HStack(spacing: 20) {
////                Button(action: {
////                    self.operatorSign = "+"
////                }) {
////                    Text("+")
////                }
////
////                Button(action: {
////                    self.operatorSign = "-"
////                }) {
////                    Text("-")
////                }
////
////                Button(action: {
////                    self.operatorSign = "*"
////                }) {
////                    Text("*")
////                }
////
////                Button(action: {
////                    self.operatorSign = "/"
////                }) {
////                    Text("/")
////                }
////            }
////
////            Button(action: {
////                if let first = Double(self.firstNumber), let second = Double(self.secondNumber) {
////                    switch self.operatorSign {
////                        case "+":
////                            self.result = String(first + second)
////                        case "-":
////                            self.result = String(first - second)
////                        case "*":
////                            self.result = String(first * second)
////                        case "/":
////                            self.result = String(first / second)
////                        default:
////                            break
////                    }
////                }
////            }) {
////                Text("Calculate")
////            }
////        }
////        .padding()
////    }
////}
////
////struct ContentView_Previews: PreviewProvider {
////    static var previews: some View {
////        ContentView()
////    }
////}
