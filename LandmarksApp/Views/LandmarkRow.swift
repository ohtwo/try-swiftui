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

      if landmark.isFavorite {
        Image(systemName: "star.fill")
          .foregroundStyle(.yellow)
      }
    }
  }
}

#Preview {
  Group {
    LandmarkRow(landmark: Landmark.landmarks[0])
    LandmarkRow(landmark: Landmark.landmarks[1])
    LandmarkRow(landmark: Landmark.landmarks[2])
    LandmarkRow(landmark: Landmark.landmarks[3])
  }
}
