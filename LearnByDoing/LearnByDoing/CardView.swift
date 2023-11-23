//
//  CardView.swift
//  LearnByDoing
//
//  Created by Luiz Araujo on 22/11/23.
//

import SwiftUI

struct CardView: View {
    var card: Card

    var body: some View {
        ZStack {
            Image(card.imageName)

            VStack {
                Text(card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text(card.headline)
                    .fontWeight(.light)
                    .italic()

                Spacer()

                Button {

                    playSound(sound: "sound-chime", type: "mp3")
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
            }
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .padding(.vertical)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(radius: 8)
    }
}

#Preview {
    CardView(card: cardData[1])
}
