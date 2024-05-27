//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Byeonghak Kang on 5/27/24.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    NavigationSplitView {
      List(Landmark.landmarks) { landmark in
        NavigationLink {
          LandmarkDetail(landmark: landmark)
        } label: {
          LandmarkRow(landmark: landmark)
        }
      }
      .navigationTitle("Landmarks")
    } detail: {
      Text("Select a Landmark")
    }
  }
}

#Preview {
  LandmarkList()
}
