//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Byeonghak Kang on 5/27/24.
//

import SwiftUI

struct LandmarkRow: View {
  var landmark: Landmark

  var body: some View {
    HStack {
      landmark.image
        .resizable()
        .frame(width: 50, height: 50)
      Text(landmark.name)

      Spacer()
    }
  }
}

#Preview("Turtle Rock") {
  LandmarkRow(landmark: Landmark.landmarks[0])
}
#Preview("Salmon") {
  LandmarkRow(landmark: Landmark.landmarks[1])
}
