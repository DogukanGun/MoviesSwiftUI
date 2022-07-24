//
//  ContentView.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 24.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isOnboard") private var isOnboard:Bool = true
    
    var body: some View {
        if isOnboard{
            SplashScreenView()
        }else{
            Text("Hello word")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
