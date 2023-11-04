//
//  ChessMaster.swift
//  ChessMasters
//
//  Created by CEMRE YARDIM on 2.11.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct ChessMaster: Identifiable, Codable {
  var id : String { // Calculated property. Stored property alternative "var id = UUID()"
    imageName
  }
  let fullName: String
  let imageName: String
  let born: String
  let urlString: String
  let worldChampionRange: String
  let coordinate : Coordinate
  var coordinateLoc: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
  }
}

struct Coordinate: Codable {
  let latitude: Double
  let longitude: Double
}

extension ChessMaster {
  static let kasparov = ChessMaster(fullName: "Garry Kimovich\nKasparov", imageName: "kasparov", born: "13 April 1963\nBaku, Azerbaijan SSR,\nSoviet Union", urlString: "https://commons.wikimedia.org/wiki/File:Garry_Kasparov_Venemaa_maletaja,_maletreener_ja_poliitik_2013.jpg", worldChampionRange: "1985-2000", coordinate: Coordinate(latitude: 40.38302019894157, longitude: 49.84680513579951))
  
  static let fischer = ChessMaster(fullName: "Robert James\nFischer", imageName: "fischer", born: "March 9, 1943\nChicago, Illinois, US",urlString: "https://commons.wikimedia.org/wiki/File:Bobby_Fischer_1972.jpg", worldChampionRange: "1972-1975", coordinate: Coordinate(latitude: 41.86847174027573, longitude: -87.6194894814636))
  
  static let carlsen = ChessMaster(fullName: "Sven Magnus Øen\nCarlsen", imageName: "carlsen", born: "30 November 1990\nTønsberg, Norway",urlString: "https://commons.wikimedia.org/wiki/File:Carlsen_Magnus_(30238051906).jpg", worldChampionRange: "2013-2023", coordinate: Coordinate(latitude: 59.26690513795955, longitude: 10.405004846501246))
  
  static let capablanca = ChessMaster(fullName: "José Raúl\nCapablanca y Graupera", imageName: "capablanca", born: "19 November 1888\nHavana,\nCaptaincy General of Cuba,\nSpanish Empire",urlString: "https://commons.wikimedia.org/wiki/File:José_Raúl_Capablanca_1931.jpg", worldChampionRange: "1921-1927", coordinate: Coordinate(latitude: 23.145377416616302, longitude: -82.35775607191826))
  
  static let all = [kasparov, fischer, carlsen, capablanca]
}



