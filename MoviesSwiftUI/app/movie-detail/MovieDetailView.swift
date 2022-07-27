//
//  MovieDetailView.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 27.07.2022.
//

import SwiftUI

struct MovieDetailView: View {
    
    var popularMovie:PopularMovie
    
    var body: some View {
        VStack(alignment: .center){
            if popularMovie.posterPath != nil{
                AsyncImage(url: URL(string: ImageClient.getImageFullUrl(imageName: popularMovie.posterPath!))){ image in
                    image
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/3)
                } placeholder: {
                    Text(ImageClient.getImageFullUrl(imageName: popularMovie.posterPath!))
                        .foregroundColor(.white)
                }
            }
            if popularMovie.title != nil && popularMovie.overview != nil{
                Text(popularMovie.title!)
                    .font(.title2)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                    .frame(width:UIScreen.main.bounds.width,alignment:.leading)
                Text(popularMovie.overview!)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .multilineTextAlignment(.leading)
                    .frame(width:UIScreen.main.bounds.width,alignment:.leading)
                Spacer()
                    Button {
                        
                    } label: {
                        Text("watch trailer".uppercased())
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            
                    }
                    .frame(width: UIScreen.main.bounds.width/1.5)
                    .padding(10)
                    .background(Color.red)
                    .clipShape(Capsule())
            }
            
        }
        .background(.black)
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .topLeading
            )
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(popularMovie: PopularMovie(adult: nil, backdropPath: nil, genreIDS: nil, id: nil, originalLanguage: nil, originalTitle: nil, overview: "dsdadasdasdjkansdlasnjdnalsjndjlasnjldnasjlndjlasnjldnajlsndjlasndjlnasjldnaljsndjlasndjlasndljnasjdnjlasndljasndljnasljdnlasjndljasndljnasljdnasljndlansdnasldnasljndlasndlasndlnasldnaslndlasndasldnlasndlmasnldnasldnalsndlasndlansdlmnas", popularity: nil, posterPath: "/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", releaseDate: nil, title: "Ironman", video: nil, voteAverage: nil, voteCount: nil))
    }
}
