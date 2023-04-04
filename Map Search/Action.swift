//
//  Action.swift
//  Map Search
//
//  Created by Lori Rothermel on 4/4/23.
//

import Foundation

struct Action: Identifiable {
    let id = UUID().uuidString
    let title: String
    let image: String
    
    let handler: () -> Void
}


