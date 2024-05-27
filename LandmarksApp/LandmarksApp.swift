//
//  LandmarksApp.swift
//  TrySwiftUI
//
//  Created by Kang Byeonghak on 1/14/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @State private var modelData = ModelData()

  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(modelData)
    }
  }
}
