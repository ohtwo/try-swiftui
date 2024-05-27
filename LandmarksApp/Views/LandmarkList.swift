//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Byeonghak Kang on 5/27/24.
//

import SwiftUI

struct LandmarkList: View {
  @State private var showFavoritesOnly = false

  var filteredLandmarks: [Landmark] {
    Landmark.landmarks.filter {
      !showFavoritesOnly || $0.isFavorite
    }
  }

  var body: some View {
    NavigationSplitView {
      List {
        Toggle(isOn: $showFavoritesOnly) {
          Text("Favorites only")
        }

        ForEach(filteredLandmarks) { landmark in
          NavigationLink {
            LandmarkDetail(landmark: landmark)
          } label: {
            LandmarkRow(landmark: landmark)
          }
        }
      }
      .animation(.default, value: filteredLandmarks)
      .navigationTitle("Landmarks")
    } detail: {
      Text("Select a Landmark")
    }
  }
}

#Preview {
  LandmarkList()
}
