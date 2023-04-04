//
//  BusinessView.swift
//  Map Search
//
//  Created by Lori Rothermel on 4/4/23.
//

import SwiftUI

struct BusinessView: View {
    @ObservedObject var mapController: MapController
        
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(mapController.selectedBusinessName)
                        .font(.title)
                    Text(mapController.selectedBusinessPlacemark)
                }  // VStack
                Spacer()
                Button {
                    mapController.isBusinessViewShowing.toggle()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.secondary)
                }  // Button
            }  // HStack
            HStack {
                ForEach(mapController.actions) { action in
                    Button {
                        action.handler()
                    } label: {
                        VStack {
                            Image(systemName: action.image)
                            Text(action.title)
                        }  // VStack
                        .frame(maxWidth: .infinity)
                    }  // Button
                    .buttonStyle(.borderedProminent)
                }  // ForEach
            }  // HStack
        }  // VStack
        .padding()
    }
}

struct BusinessView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessView(mapController: MapController())
            .previewLayout(.sizeThatFits)
    }
}
