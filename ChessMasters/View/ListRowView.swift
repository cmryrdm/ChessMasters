//
//  ListRowView.swift
//  ChessMasters
//
//  Created by CEMRE YARDIM on 2.11.2023.
//

import SwiftUI

struct ListRowView: View {
  var master: ChessMaster
  
  var body: some View {
    
    HStack {
      
      Image(master.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 50, height: 50, alignment: .leading)
      
      Text(master.imageName.capitalizeFirstLetter())
    }
  }
}

#Preview {
  ListRowView(master: ChessMaster.all[0])
}
