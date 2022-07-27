//
//  HomeView.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 25.07.2022.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeVM = HomeViewVM()
    
    var popularMovies:PopularMovies?{
        homeVM.movie
    }
    
    var body: some View {
        ScrollView(.vertical){
            VStack(spacing:30){
                ZStack{
                    Image("splash-1")
                        .resizable()
                        .scaledToFill()
                    Rectangle()
                            .foregroundColor(.clear)
                            .background(LinearGradient(colors: [Color.black.opacity(0.6)], startPoint: .top, endPoint: .bottom))
                }.frame(maxHeight:UIScreen.main.bounds.height/2)
                
                Text("Ironman")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(y:-100)
                VStack(spacing:20){
                    Button {
                        //TODO buraya action gelecek
                    } label: {
                        HStack{
                            Image(systemName: "play")
                                .font(.system(size: 20, weight: .bold, design: .monospaced))
                                .foregroundColor(.white)
                            Text("Play")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .padding(10)
                        .background(Color(UIColor(named: "ButtonColor")!))
                        
                    }
                    .padding(10)
                    VStack(alignment:.leading){
                        HStack(){
                            Text("my watch list".uppercased())
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                            Text("See all ")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .padding(.bottom,10)
                        HStack{
                            if let popularMovies = popularMovies?.results{
                                HomeViewBottomList(popularMovies: popularMovies)
                            }
                        }
                    }
                    
                }
                .background(Color.black)
                .offset(y:-100)
            }
            .navigationBarHidden(true)
            .frame(maxWidth:.infinity
                   ,maxHeight:.infinity)
            .onAppear(perform: {
                homeVM.getMovies()
            })
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color.black)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
