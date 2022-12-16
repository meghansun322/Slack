//
//  Profile.swift
//  Slack
//
//  Created by Meghan Sun on 11/10/22.
//

import Foundation

struct Profile: Hashable {
    var name: String
    var image: String


    static let profiles_example: [Profile] = [Profile(name: "Meghan Sun (you)", image: "meghansun"), Profile(name: "Alec Nipp", image: "yellow-profile"), Profile(name: "Meghan Sun (you)", image: "meghansun"), Profile(name: "Alec Nipp", image: "yellow-profile"), Profile(name: "Meghan Sun (you)", image: "meghansun"), Profile(name: "Alec Nipp", image: "yellow-profile"), Profile(name: "Meghan Sun (you)", image: "meghansun"), Profile(name: "Alec Nipp", image: "yellow-profile")]
        
    }
