//
//  MapView.swift
//  ChessMasters
//
//  Created by CEMRE YARDIM on 2.11.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
  @Binding var cameraPosition: MapCameraPosition // property wrapper shall be @Binding
  
  var body: some View {
    
    Map(position: $cameraPosition)
  }
}

//#Preview {
//  MapView(cameraPosition: MapCameraPosition.region(MKCoordinateRegion(center: ChessMaster.all[0].coordinateLoc, span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25))))
//}
