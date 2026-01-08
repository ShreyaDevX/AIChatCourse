//
//  ExploreView.swift
//  AIChatCourse
//
//  Created by Shreya Pallan on 23/12/25.
//

import SwiftUI

struct ExploreView: View {
    let avatar = AvatarModel.mock

    var body: some View {
        NavigationStack {
            HeroCellView(
                title: avatar.name,
                subTitle: avatar.characterDescription,
                imageName: avatar.profileImage
                )
            .frame(height: 200)
            .navigationTitle("Explore")
        }
    }
}

#Preview {
    ExploreView()
}
