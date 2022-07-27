//
//  HomeViewBottomList.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 27.07.2022.
//

import SwiftUI

struct HomeViewBottomList: View {
    
    var popularMovies: [PopularMovie]
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                ForEach(popularMovies,id: \.posterPath){ movie in
                    NavigationLink(destination:MovieDetailView(popularMovie: movie)){
                        VStack{
                            PopularMoviesView(popularMovie: movie,height: 200)
                        }
                    }
                }
            }
        }
        .padding(.top,10)
    }
}

struct HomeViewBottomList_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewBottomList(popularMovies: [PopularMovie(adult: nil, backdropPath: nil, genreIDS: nil, id: nil, originalLanguage: nil, originalTitle: nil, overview: "dsdadasdasdjkansdlasnjdnalsjndjlasnjldnasjlndjlasnjldnajlsndjlasndjlnasjldnaljsndjlasndjlasndljnasjdnjlasndljasndljnasljdnlasjndljasndljnasljdnasljndlansdnasldnasljndlasndlasndlnasldnaslndlasndasldnlasndlmasnldnasldnalsndlasndlansdlmnas", popularity: nil, posterPath: "/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", releaseDate: nil, title: "Ironman", video: nil, voteAverage: nil, voteCount: nil)])
    }
}
