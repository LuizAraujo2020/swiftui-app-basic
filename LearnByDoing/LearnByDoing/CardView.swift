//
//  CardView.swift
//  LearnByDoing
//
//  Created by Luiz Araujo on 22/11/23.
//

import SwiftUI

struct CardView: View {
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    var body: some View {
        ZStack {
            Image("developer-no1")

            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text("Better apps. Less Code.")
                    .fontWeight(.light)
                    .italic()

                Spacer()

                Button {

                } label: {
                    HStack {
                        Text("Learn".uppercased())
                            .fontWeight(.heavy)
                        .tint(.white)

                        Image(systemName: "arrow.right.circle")
                            .font(.title.weight(.medium))
                            .tint(.white)
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 32)
                .background(LinearGradient(colors: gradient, startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .padding(.vertical)
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(radius: 8)
    }
}

#Preview {
    CardView()
}
