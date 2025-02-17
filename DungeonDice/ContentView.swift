//
//  ContentView.swift
//  DungeonDice
//
//  Created by Noah McGuire on 2/17/25.
//

import SwiftUI

struct ContentView: View {
    enum Dice: Int {
        case four = 4
        case six = 6
        case eight = 8
        case ten = 10
        case twelve = 12
        case twenty = 20
        case hundred = 100
        
        func roll() -> Int {
            return Int.random(in: 1...self.rawValue)
        }
    }
    
    @State private var resultMessage = ""
    
    var body: some View {
        VStack {
            Text("Dungeon Dice")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.red)
            
            Spacer()
            
            Text(resultMessage)
                .font(.largeTitle)
                .fontWeight(.medium)
                .frame(height: 150)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Group {
                HStack {
                    Button("\(Dice.four.rawValue)-sided") {
                        resultMessage = "You Rolled a \(Dice.four.roll()) on a \(Dice.four.rawValue)-sided die"
                    }
                    Spacer()
                    Button("\(Dice.six.rawValue)-sided") {
                        resultMessage = "You Rolled a \(Dice.six.roll()) on a \(Dice.six.rawValue)-sided die"
                    }
                    Spacer()
                    Button("\(Dice.eight.rawValue)-sided") {
                        resultMessage = "You Rolled a \(Dice.eight.roll()) on a \(Dice.eight.rawValue)-sided die"
                    }
                }
                HStack {
                    Button("\(Dice.ten.rawValue)-sided") {
                        resultMessage = "You Rolled a \(Dice.ten.roll()) on a \(Dice.ten.rawValue)-sided die"
                    }
                    Spacer()
                    Button("\(Dice.twelve.rawValue)-sided") {
                        resultMessage = "You Rolled a \(Dice.twelve.roll()) on a \(Dice.twelve.rawValue)-sided die"
                    }
                    Spacer()
                    Button("\(Dice.twenty.rawValue)-sided") {
                        resultMessage = "You Rolled a \(Dice.twenty.roll()) on a \(Dice.twenty.rawValue)-sided die"
                    }
                }
                Button("\(Dice.hundred.rawValue)-sided") {
                    resultMessage = "You Rolled a \(Dice.hundred.roll()) on a \(Dice.hundred.rawValue)-sided die"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
