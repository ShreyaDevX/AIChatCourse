//
//  OnboardingCompletedView.swift
//  AIChatCourse
//
//  Created by Shreya Pallan on 23/12/25.
//

import SwiftUI

struct OnboardingCompletedView: View {

    @Environment(Appstate.self) private var root

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Setup completed!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.accent)

            Text("We've setup yout profile and you are ready to start chatting")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)

            Button {
                onFinishButtonPressed()
            } label: {
                Text("Finish")
                    .callToActionButton()

            }

        }
        .frame(maxHeight: .infinity)
        .padding(24)

    }

    func onFinishButtonPressed() {

       // more logic
        root.updateViewState(showTabbarView: true)
    }
}

#Preview {
    OnboardingCompletedView()
        .environment(Appstate())
}
