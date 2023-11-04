//
//  String+Extension.swift
//  ChessMasters
//
//  Created by CEMRE YARDIM on 2.11.2023.
//

import Foundation

extension String {
  func capitalizeFirstLetter() -> String {
    guard let first = first else {
      return self
    }
    return replacingCharacters(in: startIndex..<index(after: startIndex), with: String(first).capitalized)
  }
}
