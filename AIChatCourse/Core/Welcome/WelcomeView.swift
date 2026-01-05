//
//  WelcomeView.swift
//  AIChatCourse
//
//  Created by Shreya Pallan on 23/12/25.
//

import SwiftUI

struct WelcomeView: View {

    @State var imageName: String = Constants.randomImage

    var body: some View {
        NavigationStack {
            VStack(spacing: 8) {
                ImageLoaderView(urlString: imageName)
                    .ignoresSafeArea()

                titleSection
                .padding(.top, 24)

                policyLinks

            }

        }

    }

    private var titleSection: some View {
        VStack(spacing: 8) {
            Text("AI chat 🤙🏼")
                .font(.largeTitle)
                .fontWeight(.semibold)

            Text("Youtube @ SwiftfulThinking")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }

    private var ctaButtons: some View {
        VStack(spacing: 8) {
            NavigationLink {
                OnboardingCompletedView()
            } label: {
                Text("Get started")
                    .callToActionButton()
            }
            Text("Already have an account? Sign in!")
                .underline()
                .font(.body)
                .padding(8)
                .tappableBackgroung()
                .onTapGesture {

                }
        }
        .padding(16)
    }

    private var policyLinks: some View {
        HStack(spacing: 8) {
            Link(destination: URL(string: Constants.termsOfServiceUrl)!) {
                Text("Terms of Service")
            }
            Circle()
                .fill(.accent)
                .frame(width: 4, height: 4)

            Link(destination: URL(string: Constants.privacyPolicy)!) {
                Text("Privacy Policy")
            }
        }
    }

}

#Preview {
    WelcomeView()
}
