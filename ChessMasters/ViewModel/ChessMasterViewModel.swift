//
//  ChessMasterViewModel.swift
//  ChessMasters
//
//  Created by CEMRE YARDIM on 3.11.2023.
//

import SwiftUI

class ChessMasterViewModel: ObservableObject {
  @Published var master : ChessMaster?
  
  func saveMasterToUserDefaults(master: ChessMaster) {
    if let masterData = try? JSONEncoder().encode(master) {
      UserDefaults.standard.setValue(masterData, forKey: "selectedMaster")
    }
  }
  
  func fetchMasterFromUserDefaults() -> ChessMaster? {
    if let savedMaster = UserDefaults.standard.object(forKey: "selectedMaster") as? Data {
      if let loadedMaster = try? JSONDecoder().decode(ChessMaster.self, from: savedMaster) {
        return loadedMaster
      }
    }
    return nil
  }
}
