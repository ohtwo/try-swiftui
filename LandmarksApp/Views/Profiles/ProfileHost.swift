//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Kang Byeonghak on 6/11/24.
//

import SwiftUI

struct ProfileHost: View {
  @State private var draftProfile = Profile.default

  var body: some View {
    VStack(alignment: .leading) {
      ProfileSummary(profile: draftProfile)
    }
    .padding()
  }
}

#Preview {
  ProfileHost()
}
