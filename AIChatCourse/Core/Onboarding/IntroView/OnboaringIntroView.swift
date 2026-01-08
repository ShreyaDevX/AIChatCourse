//
//  OnboaringIntroView.swift
//  AIChatCourse
//
//  Created by Shreya Pallan on 25/12/25.
//

import SwiftUI

struct OnboaringIntroView: View {
    var body: some View {
        VStack {
            Group {
                Text("Make your own ")
                +
                Text("avatars ")
                    .foregroundStyle(.accent)
                    .fontWeight(.semibold)
                +
                Text("and chat with them! \n\n Have ")
                +
                Text("real conversations ")
                    .foregroundStyle(.accent)
                    .fontWeight(.semibold)
                +
                Text("with AI generated response.")

            }
            .font(.title3)

            NavigationLink {
                OnboardingColorView()
            } label: {
                Text("Continue")
                    .callToActionButton()
            }
        }

    }
}

#Preview {
    NavigationStack {
        OnboaringIntroView()
    }

}
