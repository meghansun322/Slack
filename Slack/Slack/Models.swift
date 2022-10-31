//
//  Models.swift
//  Slack
//
//  Created by Meghan Sun on 10/30/22.
//

import Foundation


struct Message: Codable, Hashable {
    let name: String
    let profile_pic: String
    let time: String
    let message: String
}
