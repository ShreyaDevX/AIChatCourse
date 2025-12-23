//
//  AppView.swift
//  AIChatCourse
//
//  Created by Shreya Pallan on 22/12/25.
//

import SwiftUI

// tabbar - signed in
// onboarding - signed out

struct AppView: View {

    @State var appState = Appstate()

    var body: some View {
        AppViewBuilder(
            showTabbar: appState.showTabbar,
            tabBarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            }
        )
        .environment(appState)
    }
}

#Preview("AppView - Tabbar") {
    AppView(appState: Appstate(showTabbar: true))
}

#Preview("AppView - Onboarding") {
    AppView(appState: Appstate(showTabbar: false))
}
