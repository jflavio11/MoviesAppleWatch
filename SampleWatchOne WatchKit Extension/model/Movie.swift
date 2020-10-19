//
//  Movie.swift
//  SampleWatchOne WatchKit Extension
//
//  Created by Jose Flavio Quispe on 10/18/20.
//

import Foundation

struct Movie: Hashable, Identifiable {
    public let popularity: Double
    public let posterPath: String
    public let id: Int64
    public let overview: String
    public let title: String
}
