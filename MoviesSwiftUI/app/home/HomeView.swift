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
        VStack(spacing:30){
            Spacer()
            Text("Ironman")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
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
                            ScrollView(.horizontal,showsIndicators: false){
                                HStack{
                                    ForEach(popularMovies,id: \.posterPath){ movie in
                                        VStack{
                                            PopularMoviesView(popularMovie: movie)
                                        }
                                        .frame(maxHeight: 200)
                                    }
                                }
                            }
                            .padding(.top,10)
                        }
                    }
                }
                
            }.background(Color.black)

            
        } 
        .navigationBarHidden(false)
        .frame(maxWidth:.infinity
               ,maxHeight:.infinity)
        .background(Image("splash-1")
            .resizable()
            .scaledToFit()
            )
        .onAppear(perform: {
            homeVM.getMovies()
        })
        
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
