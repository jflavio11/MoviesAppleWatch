//
//  MoviesListView.swift
//  SampleWatchOne WatchKit Extension
//
//  Created by Jose Flavio Quispe on 10/18/20.
//

import SwiftUI
import Alamofire

struct MoviesListView: View {
    
    @ObservedObject var moviesRepo = MovieRepositoryImpl(api: AF)
    
    var body: some View {
        
        
        
        VStack {
            Text("Movies")
            
            //let loader = ProgressView()
                //.progressViewStyle(CircularProgressViewStyle())
        
            
            if(self.moviesRepo.error){
                Text("There was an error while obtaining the movies")
                    .multilineTextAlignment(.center)
                    .padding(.top, 10.0)
                    .padding(.bottom, 10.0)
                Button(action: {
                    self.moviesRepo.fetchMovies()
                }, label: {
                    Text("Try again")
                })
            } else {
                List(self.moviesRepo.movieList){ movie in
                    MovieItemView(movie: movie)
                }
            }
            
        }.onAppear{
            self.moviesRepo.fetchMovies()
        }
        
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
