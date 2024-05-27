//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Kang Byeonghak on 5/28/24.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
  var angle: Angle
  
  var body: some View {
    BadgeSymbol()
      .padding(-60)
      .rotationEffect(angle, anchor: .bottom)
  }
}

#Preview {
  RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
