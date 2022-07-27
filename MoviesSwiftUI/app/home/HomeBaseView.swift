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
        UITabBar.appearance().barStyle = .black
        UITabBar.appearance().isTranslucent = false
    }
    
    var body: some View {
        NavigationView {
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
}

struct HomeBaseView_Previews: PreviewProvider {
    static var previews: some View {
        HomeBaseView()
    }
}
