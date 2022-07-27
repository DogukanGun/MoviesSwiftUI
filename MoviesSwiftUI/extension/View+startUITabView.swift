//
//  View+startUITabView.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 27.07.2022.
//

import Foundation
import SwiftUI

extension View{
    func startUITabView(){
        UITabBar.appearance().backgroundColor = UIColor.black
        UITabBar.appearance().barStyle = .black
        UITabBar.appearance().isTranslucent = false
    }
}
