//
//  MovieRepositoryImpl.swift
//  SampleWatchOne WatchKit Extension
//
//  Created by Jose Flavio Quispe on 10/18/20.
//

import Foundation
import SwiftUI
import Alamofire
import SwiftyJSON

public class MovieRepositoryImpl: IMovieRepository {
    
    private var api: Alamofire.Session
    @Published var movieList: [Movie] = []
    @Published var error : Bool = false
    @Published var loading: Bool = true
    
    init(api: Alamofire.Session) {
        self.api = api
    }
    
    func fetchMovies() {
        api.request(AppConstants.API_URL + "/movie/popular?api_key=\(MOVIE_DB_API_KEY)&language=es-PE&page=1")
            .responseJSON { response in
                self.loading = false
                switch response.result {
                
                case .success(let value):
                    let json = JSON(value)
                    
                    if(json["success"].int == 0){
                        self.error = true
                        return
                    }
                    
                    let movies = json["results"].array ?? []
                    var moviesArray: [Movie] = []
                    
                    for movie in movies {
                        
                        let m = Movie(
                            popularity: movie["popularity"].double ?? 0.00,
                            posterPath: AppConstants.IMAGE_BASE_PATH + (movie["poster_path"].string ?? ""),
                            id: movie["id"].int64Value,
                            overview: movie["overview"].string ?? "No overview",
                            title: movie["title"].string ?? "No title"
                        )
                        
                        moviesArray.append(m)
                        
                    }
                    
                    self.movieList = moviesArray
                    
                    break
                    
                case .failure(let error):
                    print(error.errorDescription ?? "Unkown error")
                    self.error = true
                    break
                }
                
            }
    }
    
}
