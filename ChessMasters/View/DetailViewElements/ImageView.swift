//
//  ImageView.swift
//  ChessMasters
//
//  Created by CEMRE YARDIM on 2.11.2023.
//

import SwiftUI

struct ImageView: View {
  var master: ChessMaster
  
  var body: some View {
    
    VStack {
      Image(master.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .clipShape(Circle())
        .overlay(Circle()
          .stroke(.white, lineWidth: 4)
          .shadow(radius: 4))
      
      HStack {
        Spacer()
        Link(destination: URL(string: master.urlString)!) {
          Image(systemName: "link")
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: UIScreen.main.bounds.width * 0.3))
        }
      }.scaledToFit()
    }
  }
}

#Preview {
  ImageView(master: ChessMaster.all[0])
}
