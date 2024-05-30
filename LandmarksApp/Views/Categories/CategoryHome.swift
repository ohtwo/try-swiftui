//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Kang Byeonghak on 5/31/24.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
      NavigationSplitView {
        Text("Hello, World!")
          .navigationTitle("Featured")
      } detail: {
        Text("Select a Landmark")
      }

    }
}

#Preview {
    CategoryHome()
}
