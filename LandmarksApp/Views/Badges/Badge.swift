//
//  Badge.swift
//  Landmarks
//
//  Created by Kang Byeonghak on 5/28/24.
//

import SwiftUI

struct Badge: View {
  var badgeSymbols: some View {
    ForEach(0 ..< 8) { index in
      RotatedBadgeSymbol(angle: .degrees(Double(index) / Double(8)) * 360)
    }
    .opacity(0.5)
  }

  var body: some View {
    ZStack {
      BadgeBackground()
      GeometryReader { geometry in
        badgeSymbols
          .scaleEffect(1.0/4.0, anchor: .top)
          .position(x: geometry.size.width / 2.0, y: geometry.size.height * (3.0/4.0))
      }
    }
    .scaledToFit()
  }
}

#Preview {
  Badge()
}
