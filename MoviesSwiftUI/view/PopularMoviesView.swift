//
//  PopularMoviesView.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 26.07.2022.
//

import SwiftUI

struct PopularMoviesView: View {
    
    var popularMovie:PopularMovie
    
    var body: some View {
        VStack {
            if popularMovie.posterPath != nil{
                AsyncImage(url: URL(string: ImageClient.getImageFullUrl(imageName: popularMovie.posterPath!))){ image in
                    image
                        .resizable()
                        .scaledToFit() 
                } placeholder: {
                    Text(ImageClient.getImageFullUrl(imageName: popularMovie.posterPath!))
                        .foregroundColor(.white)
                }
            }
            if popularMovie.title != nil{
                Text(popularMovie.title!)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .font(.title2) 
                    .padding()
            }else{
                Text("Empty Name")
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
            }
        }.frame(minWidth:150,maxWidth:150)
    }
}

struct PopularMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        PopularMoviesView(popularMovie: PopularMovie(adult: false, backdropPath: nil, genreIDS: nil, id: nil, originalLanguage: nil, originalTitle: nil, overview: nil, popularity: nil, posterPath: "/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", releaseDate: nil, title: "Ironman", video: nil, voteAverage: nil, voteCount: nil))
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
