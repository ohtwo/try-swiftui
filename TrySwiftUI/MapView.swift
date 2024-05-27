//
//  MapView.swift
//  TrySwiftUI
//
//  Created by Kang Byeonghak on 1/14/24.
//

import SwiftUI
import MapKit

struct MapView: View {
  var body: some View {
    if #available(iOS 17.0, *) {
      Map(initialPosition: .region(region))
    } else {
      Map(coordinateRegion: $region)
    }
  }

  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
    span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
  )
}

#Preview {
  MapView()
}
