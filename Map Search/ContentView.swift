//
//  ContentView.swift
//  Map Search
//
//  Created by Lori Rothermel on 4/4/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var mapController = MapController()
    
    
    var body: some View {
        NavigationStack {
            MapView(mapController: mapController)
        }  // NavigationStack
        .searchable(text: $mapController.searchTerm)
        .onSubmit(of: .search) {
            mapController.search()
        }
    }  // some View
}  // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
