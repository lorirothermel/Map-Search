//
//  Business.swift
//  Map Search
//
//  Created by Lori Rothermel on 4/4/23.
//

import Foundation
import MapKit


struct Business: Identifiable {
    let id = UUID().uuidString
    let name: String
    let placemark: MKPlacemark
    let coordinate: CLLocationCoordinate2D
    let phoneNumber: String
    let website: URL?
}

