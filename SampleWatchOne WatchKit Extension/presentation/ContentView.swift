//
//  ContentView.swift
//  SampleWatchOne WatchKit Extension
//
//  Created by Jose Flavio Quispe on 10/7/20.
//

import SwiftUI
import EventKit

struct ContentView: View {
    
    var body: some View {
        
        VStack(alignment: .center) {
        
            Text("My movies")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("by Flavio")
                .font(.subheadline)
                .fontWeight(.thin)
            
            Spacer()
            
            NavigationLink(destination: MoviesListView()) {
                Text("ABER :o")
            }
                        
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
