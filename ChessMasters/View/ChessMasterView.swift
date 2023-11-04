//
//  ContentView.swift
//  ChessMasters
//
//  Created by CEMRE YARDIM on 1.11.2023.
//

import SwiftUI
import MapKit

struct ChessMasterView: View {
  @ObservedObject var chessMasterViewModel = ChessMasterViewModel()
  @State private var isOpened = true
  
  var body: some View {
    
    NavigationStack {
      
      VStack {
        List(ChessMaster.all) { master in
          NavigationLink {
            DetailView(master: Binding(
              get: { master },
              set: { _ in } // backward compatibility
            ))
            .onAppear {
              chessMasterViewModel.saveMasterToUserDefaults(master: master)
              chessMasterViewModel.master = master
            }
          } label: {
            ListRowView(master: master)
          }
          .frame(height: 80)
        }.navigationTitle("Chess Grandmasters")
        
        if let previousMaster = chessMasterViewModel.fetchMasterFromUserDefaults(), isOpened {
          Text("Previous session last selection: \(previousMaster.imageName.capitalizeFirstLetter())")
            .foregroundStyle(.gray)
            .multilineTextAlignment(.leading)
        }
        
        if let currentMaster = chessMasterViewModel.master {
          Text("Current session last selection: \(currentMaster.imageName.capitalizeFirstLetter())")
            .foregroundStyle(.gray)
            .multilineTextAlignment(.leading)
            .onAppear {
              isOpened = false
            }
        }
      }
    }.tint(.black)
  }
}

#Preview {
  ChessMasterView()
}
