//
//  MoviesListView.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 27.07.2022.
//

import SwiftUI

struct MoviesListView: View {
    
    init(){
        startUITabView()
    }
    
    private var gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    
    @StateObject var moviesListVM = MoviesListVM()
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            if moviesListVM.movie != nil{
                LazyVGrid(columns: gridLayout,spacing: 20){
                    ForEach((moviesListVM.movie?.results)!,id: \.id){movie in
                        MoviesGridRow(popularMovie: movie)
                    }
                }
            }
        }
        .onAppear {
            moviesListVM.getMovies()
        }
        .background(.black)
    }
    
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
