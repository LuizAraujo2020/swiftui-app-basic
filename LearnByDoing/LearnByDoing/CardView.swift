//
//  CardView.swift
//  LearnByDoing
//
//  Created by Luiz Araujo on 22/11/23.
//

import SwiftUI

struct CardView: View {
    @State private var fadeIn = false
    @State private var moveDownard = false
    @State private var moveUpward = false

    var card: Card

    private let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)

    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .offset(y: moveDownard ? 0 : -100)

                Text(card.headline)
                    .fontWeight(.light)
                    .italic()
                    .offset(y: moveDownard ? 0 : -100)

                Spacer()

                Button {

                    playSound(sound: "sound-chime", type: "mp3")
                    self.hapticImpact.impactOccurred()
                } label: {
                    HStack {
                        Text(card.callToAction.uppercased())
                            .fontWeight(.heavy)
                        .tint(.white)

                        Image(systemName: "arrow.right.circle")
                            .font(.title.weight(.medium))
                            .tint(.white)
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 32)
                .background(LinearGradient(colors: card.gradientColors, startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
                .offset(y: moveUpward ? 0 : 100)
            }
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .padding(.vertical)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(radius: 8)
        .onAppear {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }

            withAnimation(.linear(duration: 0.8)) {
                self.moveDownard.toggle()
            }

            withAnimation(.linear(duration: 0.8)) {
                self.moveUpward.toggle()
            }
        }
    }
}

#Preview {
    CardView(card: cardData[1])
}
