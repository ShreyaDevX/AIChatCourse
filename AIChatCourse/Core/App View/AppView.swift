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

    @AppStorage("showTabbar") var showTabbar: Bool = true
    var body: some View {
        AppViewBuilder(
            showTabbar: showTabbar,
            tabBarView: {
                ZStack {
                    Color.red.ignoresSafeArea()
                    Text("Tabbar")
                }
            },
            onboardingView: {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Text("Onboarding View")
                }
            }
        )
        .animation(.smooth, value: showTabbar)
//        .onTapGesture {
//            showTabbar.toggle()
//        }
    }
}

#Preview("AppView - Tabbar") {
    AppView(showTabbar: false)
}

#Preview("AppView - Onboarding") {
    AppView(showTabbar: true)
}
