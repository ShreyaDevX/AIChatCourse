//
//  AppViewBuilder.swift
//  AIChatCourse
//
//  Created by Shreya Pallan on 23/12/25.
//
import SwiftUI

struct AppViewBuilder<TabbarView: View, OnboardingView: View>: View {

    var showTabbar: Bool = true
    @ViewBuilder var tabBarView: TabbarView
    @ViewBuilder var onboardingView: OnboardingView

    var body: some View {

        ZStack {
            if showTabbar {
                tabBarView
                .transition(.move(edge: .trailing))
            } else {
                onboardingView
                .transition(.move(edge: .leading))
            }
        }
        .animation(.smooth, value: showTabbar)

    }

}

private struct PreviewView: View {

    @State private var showTabbar: Bool = true

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
        .onTapGesture {
            showTabbar.toggle()
        }
    }
}

#Preview {
    AppView()
}
