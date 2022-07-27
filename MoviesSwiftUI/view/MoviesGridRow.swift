//
//  MoviesGridRow.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 27.07.2022.
//

import SwiftUI

struct MoviesGridRow: View {
    
    var popularMovie:PopularMovie
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                if popularMovie.posterPath != nil && popularMovie.title != nil{
                    AsyncImage(url: URL(string: ImageClient.getImageFullUrl(imageName: popularMovie.posterPath!))){ image in
                        image
                            .resizable()
                            .frame(height:geometry.size.height/1.5)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                    } placeholder: {
                        Text(ImageClient.getImageFullUrl(imageName: popularMovie.posterPath!))
                            .foregroundColor(.white)
                    }
                    
                    Text(popularMovie.title!)
                        .foregroundColor(.gray)
                        .lineLimit(1)
                    
                    FilledRoundedButton(buttonText: "Book Now", buttonWidth: UIScreen.main.bounds.width/2)
                        .padding()
                }
            } 
        }.frame(height: UIScreen.main.bounds.height/2.5)
        
    }
}

struct MoviesGridRow_Previews: PreviewProvider {
    static var previews: some View {
        MoviesGridRow(popularMovie: PopularMovie(adult: nil, backdropPath: nil, genreIDS: nil, id: nil, originalLanguage: nil, originalTitle: nil, overview: "dsdadasdasdjkansdlasnjdnalsjndjlasnjldnasjlndjlasnjldnajlsndjlasndjlnasjldnaljsndjlasndjlasndljnasjdnjlasndljasndljnasljdnlasjndljasndljnasljdnasljndlansdnasldnasljndlasndlasndlnasldnaslndlasndasldnlasndlmasnldnasldnalsndlasndlansdlmnas", popularity: nil, posterPath: "/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", releaseDate: nil, title: "Ironman", video: nil, voteAverage: nil, voteCount: nil))
            .previewLayout(.sizeThatFits)
    }
}
