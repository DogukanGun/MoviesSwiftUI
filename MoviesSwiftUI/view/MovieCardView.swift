//
//  MovieCardView.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 27.07.2022.
//

import SwiftUI

struct MovieCardView: View, Identifiable{
    
    let id = UUID()
    var movie: PopularMovie
    
    var body: some View {
        if movie.posterPath != nil && movie.title != nil{
            AsyncImage(url: URL(string: ImageClient.getImageFullUrl(imageName: movie.posterPath!))){ image in
                image
                    .resizable()
                    .cornerRadius(24)
                    .scaledToFit()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .overlay(
                      VStack(alignment: .center, spacing: 12) {
                        Text(movie.title!)
                          .foregroundColor(Color.white)
                          .font(.largeTitle)
                          .fontWeight(.bold)
                          .shadow(radius: 1)
                          .padding(.horizontal, 18)
                          .padding(.vertical, 4)
                          .overlay(
                            Rectangle()
                              .fill(Color.white)
                              .frame(height: 1),
                            alignment: .bottom
                        )
                      }
                      .frame(minWidth: 280)
                      .padding(.bottom, 50),
                      alignment: .bottom
                    )
            } placeholder: {
                Text(ImageClient.getImageFullUrl(imageName: movie.posterPath!))
                    .foregroundColor(.white)
            }
              
        }
      
    }

}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(movie: PopularMovie(adult: nil, backdropPath: nil, genreIDS: nil, id: nil, originalLanguage: nil, originalTitle: nil, overview: "dsdadasdasdjkansdlasnjdnalsjndjlasnjldnasjlndjlasnjldnajlsndjlasndjlnasjldnaljsndjlasndjlasndljnasjdnjlasndljasndljnasljdnlasjndljasndljnasljdnasljndlansdnasldnasljndlasndlasndlnasldnaslndlasndasldnlasndlmasnldnasldnalsndlasndlansdlmnas", popularity: nil, posterPath: "/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", releaseDate: nil, title: "Ironman", video: nil, voteAverage: nil, voteCount: nil))
    }
}
