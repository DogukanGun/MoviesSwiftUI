//
//  HttpClient.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 25.07.2022.
//

import Foundation
import Alamofire


enum NetworkError:Error{
    case SERVER_ERROR
    case AUTH_ERROR
}

public enum MovieResult<T, Failure> where Failure : Error {
    /// A success, storing a `Success` value.
    case success(T)
    /// A failure, storing a `Failure` value.
    case failure(Failure)
}

class HttpClient<T:Codable,E:Codable> {
    
    private static func getUrlWithBase(url:String)->String{
        return "https://api.themoviedb.org/\(url)?api_key=0f0c51528d56348470ca670c9fff95e7"
    }
    
    static func getRequest(url:String,requestBody:T?,completion: @escaping (MovieResult<E,NetworkError>)->()){
        AF.request(getUrlWithBase(url: url), method: .get, parameters: requestBody).response{ response in
            if response.data == nil{
                completion(.failure(.SERVER_ERROR))
            }else{
                let returnedData: E = try! JSONDecoder().decode(E.self, from: response.data!)
                completion(.success(returnedData))
            }
        }
    }
}

class ImageClient{
    static func getImageFullUrl(imageName:String)->String{
        return "https://image.tmdb.org/t/p/w500\(imageName)"
    }
}
