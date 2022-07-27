//
//  AnyTransition+trailing.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 27.07.2022.
//

import Foundation
import SwiftUI

extension AnyTransition {
  static var trailingBottom: AnyTransition {
    AnyTransition.asymmetric(
      insertion: .identity,
      removal: AnyTransition.move(edge: .trailing).combined(with: .move(edge: .bottom)))
  }
}
