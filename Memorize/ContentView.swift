//
//  ContentView.swift
//  Memorize
//
//  Created by Seab Jackson on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻","💀", "🎃", "👿"]
    
    var body: some View {
        HStack {
            ForEach(0..<4, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}


