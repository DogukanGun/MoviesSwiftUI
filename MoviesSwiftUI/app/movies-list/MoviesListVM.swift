//
//  MoviesListVM.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 27.07.2022.
//

import Foundation
import SwiftUI

class MoviesListVM : ObservableObject{
    
    @Published var movie:PopularMovies?
    
    func getMovies(){
        HttpClient<PopularMovies,PopularMovies>.getRequest(url: "3/movie/popular", requestBody: nil) { result in
            let movieResult = result as MovieResult<PopularMovies,NetworkError>
            switch movieResult{
            case .success(let data):
                self.movie = data as PopularMovies
            case .failure(let error):
                print(error)
            }
        }
    }
}
