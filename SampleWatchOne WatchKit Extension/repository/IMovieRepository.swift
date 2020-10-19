//
//  IMovieRepository.swift
//  SampleWatchOne WatchKit Extension
//
//  Created by Jose Flavio Quispe on 10/18/20.
//

import Foundation
protocol IMovieRepository: ObservableObject {
    
    func fetchMovies()
    
}
