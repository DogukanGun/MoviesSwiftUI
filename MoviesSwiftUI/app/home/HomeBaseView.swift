//
//  HomeBaseView.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 25.07.2022.
//

import SwiftUI

struct HomeBaseView: View {
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor.black
        UITabBar.appearance().tintColor = UIColor.red
        UITabBar.appearance().barTintColor = UIColor.red
    }
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    VStack{
                        Image(systemName: "house") 
                        Text("Home")
                    }
                }
            SplashScreenView()
                .tabItem {
                    VStack{
                        Image(systemName: "house")
                        Text("Home")
                    }
                }
        }
        .tint(.red)
    }
}

struct HomeBaseView_Previews: PreviewProvider {
    static var previews: some View {
        HomeBaseView()
    }
}
