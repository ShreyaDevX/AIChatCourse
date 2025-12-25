//
//  View+EXT.swift
//  AIChatCourse
//
//  Created by Shreya Pallan on 23/12/25.
//

import SwiftUI

extension View {
    func callToActionButton() -> some View {
        self
            .font(.headline)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(.accent)
            .cornerRadius(16)
    }

    func tappableBackgroung() -> some View {
        background(Color.black.opacity(0.001))
    }
}
