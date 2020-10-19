//
//  MovieItemView.swift
//  SampleWatchOne WatchKit Extension
//
//  Created by Jose Flavio Quispe on 10/18/20.
//

import SwiftUI
import KingfisherSwiftUI

struct MovieItemView: View {
    
    var movie: Movie
    
    var body: some View {
        
        HStack {
            
            
            KFImage(URL(string: movie.posterPath))
                .placeholder{
                    Image(systemName: "arrow.2.circlepath.circle")
                        .font(.largeTitle)
                        .opacity(0.3)
                }
                .resizable()
                .scaledToFill()
                .frame(width: 25, height: 25)
            
            Text(self.movie.title)
            
        }
        
    }
}

struct MovieItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieItemView(movie: Movie(
                        popularity: 0.00,
                        posterPath: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTGitIIAaLoKxEECqNSmwO7n416M5XPA63dQg&usqp=CAU",
                        id: 11,
                        overview: "La peli del mucierlago",
                        title: "Batman")
        )
    }
}
