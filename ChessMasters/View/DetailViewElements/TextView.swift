//
//  TextView.swift
//  ChessMasters
//
//  Created by CEMRE YARDIM on 3.11.2023.
//

import SwiftUI

struct TextView: View {
  var master: ChessMaster
  
  var body: some View {
    
    Text(master.fullName)
      .font(.largeTitle)
      .fontWeight(.semibold)
      .foregroundStyle(AngularGradient(colors: [.blue, .cyan], center: .center))
      .padding(.horizontal)
      .multilineTextAlignment(.center)
    
    HStack(alignment: .top) {
      Text("Born").padding(.leading).foregroundStyle(.gray).underline()
      Spacer()
      Text("World Champion").padding(.trailing).foregroundStyle(.gray).underline()
    }.padding(.top)
    
    HStack(alignment: .top) {
      Text(master.born).padding(.leading)
        .foregroundStyle(.gray)
        .fontWeight(.semibold)
      Spacer()
      Text(master.worldChampionRange).padding(.trailing)
        .foregroundStyle(.gray)
        .fontWeight(.semibold)
    }
  }
}

#Preview {
  TextView(master: ChessMaster.all[0])
}
