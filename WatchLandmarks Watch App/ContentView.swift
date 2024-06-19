//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Kang Byeonghak on 6/18/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    LandmarkList()
  }
}

#Preview {
  ContentView()
    .environment(ModelData())
}
