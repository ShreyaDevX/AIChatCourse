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
        VStack {
            Text("Onboarding completed!")
                .frame(maxHeight: .infinity)

            Button {
                onFinishButtonPressed()
            } label: {
                Text("Finish")
                    .callToActionButton()

            }
            .padding(16)

        }
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
