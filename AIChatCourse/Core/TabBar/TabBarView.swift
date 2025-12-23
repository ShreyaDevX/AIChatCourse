//
//  TabBarView.swift
//  AIChatCourse
//
//  Created by Shreya Pallan on 23/12/25.
// bubble.left.and.bubble.right.fill

import SwiftUI

struct TabBarView: View {
    var body: some View {

        TabView {
            ExploreView()
                .tabItem { // icon
                    Label("Explore", systemImage: "eyes")
                }

            ChatsView()
                .tabItem { // icon
                    Label("Explore", systemImage: "bubble.left.and.bubble.right.fill")
                }

            ProfileView()
                .tabItem { // icon
                    Label("Profile", systemImage: "person.fill")
                }

        }
    }
}

#Preview {
    TabBarView()
}
