//
//  DetailView.swift
//  ChessMasters
//
//  Created by CEMRE YARDIM on 2.11.2023.
//

import SwiftUI
import MapKit

struct DetailView: View {
  @Binding var master : ChessMaster
  
  var body: some View {
    
    VStack {

      MapView(cameraPosition: Binding(
        get: { MapCameraPosition.region(MKCoordinateRegion(center: master.coordinateLoc, span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25))) },
        set: { _ in } // backward compatibility
      )).edgesIgnoringSafeArea(.all)
        .imageScale(.small)
      
      ImageView(master: master)
        .offset(y: UIScreen.main.bounds.height * -0.12)
      
      TextView(master: master)
        .offset(y: UIScreen.main.bounds.height * -0.12)
      
      Spacer()
      
    }.background(Color.blue.opacity(0.05))
      .toolbarBackground(.hidden, for: .navigationBar)
  }
}

//#Preview {
//  DetailView(master: ChessMaster.all[0])
//}
