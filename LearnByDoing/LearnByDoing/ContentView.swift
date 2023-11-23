//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Luiz Araujo on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    var cards: [Card] = cardData
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { card in
                    CardView(card: card)
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding(20)
    }
}

#Preview {
    ContentView()
}
