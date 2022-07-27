//
//  AnyTransition+leading.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 27.07.2022.
//

import Foundation
import SwiftUI

extension AnyTransition {
  static var leadingBottom: AnyTransition {
    AnyTransition.asymmetric(
      insertion: .identity,
      removal: AnyTransition.move(edge: .leading).combined(with: .move(edge: .bottom)))
  }
}
