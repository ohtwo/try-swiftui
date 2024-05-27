//
//  ContentView.swift
//  TrySwiftUI
//
//  Created by Kang Byeonghak on 1/14/24.
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
