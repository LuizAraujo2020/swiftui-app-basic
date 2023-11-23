//
//  ContentView.swift
//  LearnByDoing
//
//  Created by Luiz Araujo on 22/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(0 ..< 6) { item in
                    CardView()
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
