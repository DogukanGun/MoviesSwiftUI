//
//  HomeBaseView.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 25.07.2022.
//

import SwiftUI

struct HomeBaseView: View {
     
    
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
                MoviesListView()
                    .tabItem {
                        VStack{
                            Image(systemName: "list.bullet")
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

