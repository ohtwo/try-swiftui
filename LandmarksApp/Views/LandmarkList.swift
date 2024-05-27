//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Byeonghak Kang on 5/27/24.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    List(Landmark.landmarks) { landmark in
      LandmarkRow(landmark: landmark)
    }
  }
}

#Preview {
  LandmarkList()
}
