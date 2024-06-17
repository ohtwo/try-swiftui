//
//  PageView.swift
//  Landmarks
//
//  Created by Kang Byeonghak on 6/12/24.
//

import SwiftUI

struct PageView<Page: View>: View {
  var pages: [Page]
  @State private var currentPage: Int = 0

  var body: some View {
    ZStack(alignment: .bottomTrailing) {
      PageViewController(pages: pages, currentPage: $currentPage)
      PageControl(numberOfPages: pages.count, currentPage: $currentPage)
        .frame(width: CGFloat(pages.count * 18))
        .padding()
    }
    .aspectRatio(3/2, contentMode: .fit)
  }
}

#Preview {
  PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
