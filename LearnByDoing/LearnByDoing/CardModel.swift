//
//  CardModel.swift
//  LearnByDoing
//
//  Created by Luiz Araujo on 22/11/23.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
