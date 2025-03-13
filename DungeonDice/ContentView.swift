//
//  ContentView.swift
//  DungeonDice
//
//  Created by Noah McGuire on 2/17/25.
//

import SwiftUI

struct ContentView: View {
    enum Dice: Int, CaseIterable, Identifiable {
        case four = 4
        case six = 6
        case eight = 8
        case ten = 10
        case twelve = 12
        case twenty = 20
        case hundred = 100
        var id: Int {
            rawValue
        }
        var description: String {
            "\(rawValue)-sided"
        }
        
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
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 102))]) {
                ForEach(Dice.allCases) { die in
                    Button(die.description) {
                        resultMessage = "You Rolled a \(die.roll()) on a \(die.rawValue)-sided die"
                    }
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
